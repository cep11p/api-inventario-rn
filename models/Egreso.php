<?php

namespace app\models;

use Yii;
use \app\models\base\Egreso as BaseEgreso;
use yii\helpers\ArrayHelper;
use yii\base\Exception;
/**
 * This is the model class for table "egreso".
 */
class Egreso extends BaseEgreso
{

    public function behaviors()
    {
        return ArrayHelper::merge(
            parent::behaviors(),
            [
                # custom behaviors
            ]
        );
    }
    
    public function setAttributesCustom($values, $safeOnly = true) {
        parent::setAttributes($values, $safeOnly);
        $this->fecha_inicial = date('Y-m-d');
    }
    
    /**
     * Se vinculan los nombres de la localidades a el listado
     * @param array $coleccion
     * @param array $coleccion_localidad
     * @return array
     */
    static function vincularLocalidad($coleccion = array(), $coleccion_localidad = array()) {
        $i=0;
        foreach ($coleccion as $valor) {
            foreach ($coleccion_localidad as $localidad) {
                if(isset($valor['destino_localidadid']) && isset($localidad['id']) && $valor['destino_localidadid']==$localidad['id']){                    
                    $valor['destino_localidad'] = $localidad['nombre'];
                    $coleccion[$i] = $valor;
                }
            }
            $i++;
        }
        
        return $coleccion;
    }
    
    public function getLocalidad() {
        
        $resultado = null;

        $response = \Yii::$app->lugar->buscarLocalidadPorId($this->destino_localidadid);   
        /** Chequeamos si existe el nombre de la localidad **/
        if(isset($response['nombre']) && !empty($response['nombre'])){
            $resultado = $response['nombre'];
        }
        
        return $resultado;
    }
    
    /**
     * Se obtienen lista de producto de un egreso
     * @return array
     */
    public function getListaProducto() {
        $inventarioSearch = new InventarioSearch();
        $lista_producto = $inventarioSearch->getListaProductoPorEgresoId(['egresoid'=>$this->id]);
        return $lista_producto;
    }
    
    /**
     * Se crea la lista de los productos que egresan
     * @param array $param
     * @return int cantidad egresados
     * @throws Exception
     */
    public function setListaProducto($param) {
        $resultado=0;       
        
        #validamos lista de productos
        if(!isset($param['lista_producto']) || count($param['lista_producto'])<1){
            throw new Exception('Lista de producto vacia.');
        }        
        
        #Recorre cada Producto para ser buscado en el stock
        foreach ($param['lista_producto'] as $value) {
            
            #Validamos los parametros de producto

            //productoid
            if(!isset($value['productoid']) || empty($value['productoid'])){
                throw new Exception('En la lista de productos, algunos de ellos no tienen vinculado su id');
            }
            
            //fecha_vencimiento
            if(isset($value['fecha_vencimiento']) && !empty($value['fecha_vencimiento']) && !\app\components\Help::validateDate($value['fecha_vencimiento'], 'Y-m-d')){
                throw new Exception('La fecha debe tener el formato aaaa-mm-dd');
            }

            //fecha_vencimiento
            if(!isset($value['fecha_vencimiento']) || empty($value['fecha_vencimiento'])){
                $value['fecha_vencimiento'] = null;
            }
            
            //cantidad
            if(!isset($value['cantidad']) || !is_numeric($value['cantidad']) || intval($value['cantidad'])<=0){
                throw new Exception('La cantidad es obligatoria y debe ser un numero mayor a 0');
            }
            /*** Fin Rules ***/
            
            $condicion['productoid'] = $value['productoid'];
            $condicion['fecha_vencimiento'] = $value['fecha_vencimiento'];
            $cantidad = $value['cantidad']; 
            
            $resultado += $this->setEgreso($condicion, $cantidad);

        }
        
        return $resultado;
    }
    
    /**
     * Se busca coleccion de item(productos) por fecha_vencimiento y productoid y seteamos la cantidad que egresa
     * @param array $item
     * @param int $cantidad
     * @return int
     */
    private function setEgreso($item, $cantidad) {
        
        $ids = array();
        $itemsEncontrados = Inventario::buscarItemEnStock($item);

        //chequeamos la cantidad a egresar disponible
        if(isset($cantidad) && count($itemsEncontrados)<$cantidad){
            throw new Exception('La cantidad a egresar es mayor a la cantidad de productos en stock');
        } 

        for ($i=0;$i<$cantidad;$i++){
            $ids[] = $itemsEncontrados[$i]['id'];
        }
        
        $resultado = Inventario::updateAll(['egresoid' => $this->id], ['id'=>$ids]);
        
        return $resultado;
    }

    public function rules()
    {
        return ArrayHelper::merge(
            parent::rules(),
            [
                # custom validation rules
            ]
        );
    }
    
    public function fields()
    {
        return ArrayHelper::merge(parent::fields(), [
            'tipo_egreso'=> function($model){
                return $model->tipoEgreso->nombre;
            },
            'producto_cant_total'=> function($model){
                return count($model->listaProducto);
            }
        ]);
        
    }
}
