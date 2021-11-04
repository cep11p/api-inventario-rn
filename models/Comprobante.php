<?php

namespace app\models;

use Yii;
use \app\models\base\Comprobante as BaseComprobante;
use yii\helpers\ArrayHelper;
use yii\base\Exception;
use yii\db\Query;

/**
 * This is the model class for table "comprobante".
 */
class Comprobante extends BaseComprobante
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

    public function rules()
    {
        return ArrayHelper::merge(
            parent::rules(),
            [
                # custom validation rules
            ]
        );
    }

    /**
     * registramos un nuevo stock
     *
     * @param [array] $param
     * @return array
     */
    public function registrarProductos($param) {
        
        $lista_producto = array();
        if(!isset($param['lista_producto']) || count($param['lista_producto'])<=0){
            throw new Exception('Falta lista de productos');
        }
        
        foreach ($param['lista_producto'] as $producto) {
            if(!is_numeric($producto['cantidad']) || intval($producto['cantidad'])<=0){
                throw new Exception('La cantidad debe ser un numero y mayor a 0');
            }

            /** Guardamos un stock segun la cantidad de cada producto **/
            if(isset($producto['cantidad']) && $producto['cantidad']>0){
                for($i = 1; $i <= $producto['cantidad']; $i++ ){
                    $item = new Inventario();
                    $item->setAttributes($producto);
                    $item->comprobanteid = $this->id;
                    $item->productoid = $producto['productoid'];
                    $item->falta = (!isset($producto['falta']) ||  $producto['falta'] != 1)?0:1;
                    $item->defectuoso = (!isset($producto['defectuoso']) || $producto['defectuoso'] != 1)?0:1;
                    if(!$item->validate()){
                        throw new Exception(json_encode($item->getErrors()));
                    }

                    $lista_producto[] = $item->getAttributes();
                }                    
            }
        }

        #Creamos el sql para registros masivos
        $query = new Query();
        $resultado = $query->createCommand()->batchInsert('inventario', ['comprobanteid', 'productoid', 'fecha_vencimiento', 'precio_unitario', 'defectuoso', 'egresoid', 'depositoid', 'id', 'falta','inactivo'], $lista_producto)->execute();
        
        return $resultado;
    }

    /**
     * Se modifican los productos de un comprobante
     *
     * @param [type] $comprobanteid
     * @param [type] $param
     * @return void
     */
    public function modificarProductos($param) {
        if(!isset($param['lista_producto']) || count($param['lista_producto'])<=0){
            throw new Exception('Falta lista de productos');
        }
        
        $lista_producto = $param['lista_producto'];
        $productos_registrados = $this->getListaProducto();
        $resultado = [];

        #### Calculamos las cantidades a registrar y a borrar ####
        $i=0;
        $lista_registrado_a_borrar = array();
        foreach ($lista_producto as $item) {
            if(!is_numeric($item['cantidad']) || intval($item['cantidad'])<=0){
                throw new Exception('La cantidad debe ser un entero y mayor a 0');
            }
            
            ##Comparamos con productos registrado
            foreach ($productos_registrados as $prod) {
                $item['falta'] = (!isset($item['falta']))?null:isset($item['falta']);
                if( $prod['productoid']==$item['id'] && $prod['fecha_vencimiento']==$item['fecha_vencimiento'] && $prod['falta']==$item['falta']){
                    
                    #chequeamos si contamos o descontamos cantidad
                    $cant = $item['cantidad'] - $prod['cantidad'];
                    $item['cantidad'] = $cant;
                    $lista_producto[$i] = $item;
                }else{
                    $lista_registrado_a_borrar[] = $prod;
                    continue;
                }
            }
            $i++;
        }

        # seteamos inactivos los productos a borrrar
        $this->setInactivoListaProductoRegistrados($lista_registrado_a_borrar);


        #### Despues de calcular las cantidades especificas procedemos a la
        #### reutlizacion de registros y/o agregado de registros nuevos     ####
        $cant_inactivos_bd = count(Inventario::find()->where(['inactivo' => 1])->asArray()->all());
        $cant_borrados = 0;
        $cant_registrados = 0;
        $cant_reutilizados = 0;
        foreach ($lista_producto as $value) {
            #Validamos el producto a registrar
            $modelValidate = new Inventario();
            $modelValidate->comprobanteid = $this->id;
            #anulamos la fecha_vencimiento si falta producto
            $modelValidate->fecha_vencimiento = (isset($value['falta']) &&  $value['falta'] == 1)?NULL:$value['fecha_vencimiento'];
            $modelValidate->productoid = $value['id'];
            $modelValidate->falta = (!isset($value['falta']) ||  $value['falta'] != 1)?0:1;
            if(!$modelValidate->validate()){
                throw new Exception(json_encode($modelValidate->getErrors()));
            }

            $query = new Query();
            #Se inactivan registros si cantidad es negativo
            if($value['cantidad']<0){ // se borran registros
                
                //necesitamos la cantidad a borrar en numero positvo
                $limit = $value['cantidad'] * -1;
                
                $lista_ids = Inventario::find()->select('id')->where([
                    'comprobanteid' => $this->id,
                    'productoid' => $value['id'], 
                    'fecha_vencimiento' => $value['fecha_vencimiento']
                    ])->limit($limit)->asArray()->all();
                    
                $resul = Inventario::updateAll(['inactivo'=>1],['id' => $lista_ids]);
                
                $cant_borrados = $cant_borrados+$resul;

            #Nuevos registros
            }elseif($value['cantidad']>0){
                
                #calculamos la cantidad de registros reutilizables
                $productos_inactivos = Inventario::find()->select(['id'])->where(['inactivo' => 1])->asArray()->all();

                #### Reutilizamos registros ####
                if(count($productos_inactivos)>$value['cantidad']){        
                    
                    #procedemos a reutilizar registros
                    $limit_reutilizables_ids = Inventario::find()->select(['id'])->where(['inactivo' => 1])->limit($value['cantidad'])->asArray()->all();
                    Inventario::updateAll([
                        'fecha_vencimiento'=>(isset($value['falta']) &&  $value['falta'] == 1)?NULL:$value['fecha_vencimiento'],
                        'comprobanteid' => $this->id,
                        'productoid' => $value['id'],
                        'falta' => (!isset($value['falta']) ||  $value['falta'] != 1)?0:1,
                        'defectuoso' => (!isset($value['defectuoso']) || $value['defectuoso'] != 1)?0:1,
                        'inactivo' => 0
                    ],
                    ['id' => $limit_reutilizables_ids]);
                    
                #### Si los registros reutilizables no bastan
                }else{
                    #cantidad reutilizables
                    $cant_reutil = count($productos_inactivos);
                    
                    #si la cantidad reutilizable es mayor a 0, reutilizamos lo que podemos sin problema
                    if($cant_reutil>0){
                        #Sacamos la cantidad que se puede reutilzar
                        $limit_reutilizables_ids = Inventario::find()->select(['id'])->where(['inactivo' => 1])->limit($cant_reutil)->asArray()->all();
                      
                        #obtenemos el resto para ser registrados
                        $value['cantidad'] = $value['cantidad'] - count($limit_reutilizables_ids);
                        
                        #realizamos la consulta
                        $cant_reutilizados = $cant_reutilizados + Inventario::updateAll([
                            'fecha_vencimiento'=>(isset($value['falta']) &&  $value['falta'] == 1)?NULL:$value['fecha_vencimiento'],
                            'comprobanteid' => $this->id,
                            'productoid' => $value['id'],
                            'falta' => (!isset($value['falta']) ||  $value['falta'] != 1)?0:1,
                            'defectuoso' => (!isset($value['defectuoso']) || $value['defectuoso'] != 1)?0:1,
                            'inactivo' => 0
                        ],
                        ['id' => $limit_reutilizables_ids]);

                    }
                    
                    #Registramos los items restantes
                    if($value['cantidad']>0){
                        for ($i=0; $i < $value['cantidad']; $i++) { 
                            $resul = $query->createCommand()->insert('inventario', [
                                'fecha_vencimiento'=>(isset($value['falta']) &&  $value['falta'] == 1)?NULL:$value['fecha_vencimiento'],
                                'comprobanteid' => $this->id,
                                'productoid' => $value['id'],
                                'falta' => (!isset($value['falta']) ||  $value['falta'] != 1)?0:1,
                                'defectuoso' => (!isset($value['defectuoso']) || $value['defectuoso'] != 1)?0:1,
                            ])->execute();
                            $cant_registrados = $cant_registrados + $resul;
                        }
                    }
                }
            }

        }
        $resultado['reutilizados'] = $cant_reutilizados;
        $resultado['registrados'] = $cant_registrados;
        $resultado['inactivos'] = $cant_borrados;
        $resultado['inactivos_bd'] = $cant_inactivos_bd;
        
        return $resultado;
    }

    public function setInactivoListaProductoRegistrados($params){
        $resultado = 0;
        foreach ($params as $value) {
            $lista_ids = Inventario::find()->select('id')->where([
                'comprobanteid' => $this->id,
                'productoid' => $value['productoid'], 
                'fecha_vencimiento' => $value['fecha_vencimiento']
                ])->asArray()->all();            
            $resultado = $resultado + Inventario::updateAll(['inactivo'=>1],['id' => $lista_ids]);               
        }

        return $resultado;
    }
    
    public function getListaProducto() {
        $inventarioSearch = new InventarioSearch();
        
        $resultado = $inventarioSearch->getListaProductoPorComprobanteid(['comprobanteid'=>$this->id]);
        
        return $resultado;
    }
    
    public function getCantidadTotalProducto() {
        $inventarioSearch = new InventarioSearch();
        
        $resultado = $inventarioSearch->getCantitadProducto(['comprobanteid'=>$this->id]);
        
        return $resultado;
    }
    
    public function setAttributesCustom($values, $safeOnly = true) {
        parent::setAttributes($values, $safeOnly);
    }
    
    public function borrarListaProducto() {
        Inventario::deleteAll(['comprobanteid'=>$this->id]);    
    }
   
    /**
     * Se carga una lista de productos 
     * @param array $param lista de prodcuto que ingresan al inventario
     * @throws Exception
     */
    public function setListaProducto($param) {
        
        if(!isset($param['lista_producto']) || count($param['lista_producto'])<=0){
            throw new Exception('Falta lista de productos');
        }
        
        foreach ($param['lista_producto'] as $producto) {
            if(!is_numeric($producto['cantidad']) || intval($producto['cantidad'])<=0){
                throw new Exception('La cantidad debe ser un numero y mayor a 0');
            }

            /** Guardamos un stock segun la cantidad de cada producto **/
            if(isset($producto['cantidad']) && $producto['cantidad']>0){
                for($i = 1; $i <= $producto['cantidad']; $i++ ){
                    $stock = new Inventario();
                    $stock->setAttributes($producto);
                    $stock->comprobanteid = $this->id;
                    $stock->productoid = $producto['id'];
                    if(!$stock->save()){
                        throw new Exception(json_encode($stock->getErrors()));
                    }
                }                    
            }
        }
    }
    
    /**
     * Se hace una modificacion sobre los productos que faltaban entregar. La modificacion se basa en cambiar falta = 1 (true) a falta = 0 (falso)
     * @param array $param
     * @throws Exception
     */
    public function registrarProductoPendiente($param) {
        
        if(!isset($param['falta'])){
            throw new Exception('El atributo falta es obligatorio');
        }
        
        if(!isset($param['fecha_vencimiento']) || !\app\components\Help::validateDate($param['fecha_vencimiento'], 'Y-m-d')){
            throw new Exception('La fecha es obligatoria y debe tener el formato aaaa-mm-dd');
        }

        if(!isset($param['cantidad']) || !is_numeric($param['cantidad']) || intval($param['cantidad'])<=0){
            throw new Exception('La cantidad es obligatoria y debe ser un numero y mayor a 0');
        }        
        
        $falta = \app\components\Help::setBoolean($param['falta']);
        $encontrarListaCondicion = array(
            'comprobanteid'=> $this->id,
            'productoid'=>$param['productoid'],
            'falta'=>1,
            'egresoid'=>null
        );
        $modificarListaCondicion = ['falta'=>0,'fecha_vencimiento'=>$param['fecha_vencimiento']];
        
        //chequeamos si la falta es verdadero, entonces modificaremos los productos con falta en falso
        if($falta){
            $encontrarListaCondicion['falta']=0;
            $encontrarListaCondicion['fecha_vencimiento']=$param['fecha_vencimiento'];
            $modificarListaCondicion = ['falta'=>1,'fecha_vencimiento'=>null];
        }
        $producto_encontroado_lista = Inventario::find()->where($encontrarListaCondicion)->asArray()->all();
        $ids = $this->getProductoEncontradoIds($producto_encontroado_lista, $param['cantidad']);
                           
        $resultado = Inventario::updateAll($modificarListaCondicion, ['id'=>$ids]);        
    }
    
    /**
     * Obtenemos los ids de los productos a modificar
     * @param array $producto_encontroado_lista
     * @param int $cantidad este atributo nos ayuda a validar la cantidad disponible a modificar
     * @return array
     * @throws Exception
     */
    private function getProductoEncontradoIds($producto_encontroado_lista, $cantidad) {
        //Verificamos la cantidad de productos disponibles a modificar
        if(isset($cantidad) && count($producto_encontroado_lista)<$cantidad){
            throw new Exception('La cantidad a modificar es mayor a la cantidad de productos existentes en el inventario ('. count($producto_encontroado_lista).')');
        }  

        for($i = 0; $i < $cantidad; $i++ ){
            $ids[] = $producto_encontroado_lista[$i]['id'];
        } 
        
        return $ids;
    }
    
    public function fields()
    {
        return ArrayHelper::merge(parent::fields(), [
            'producto_cant_total'=> function($model){
                return $model->cantidadTotalProducto;
            },
            'proveedorid'=> function($model){
                return ($model->proveedorid==null)?'':$model->proveedorid;
            },
            'proveedor'=> function($model){
                return ($model->proveedor==null)?'':$model->proveedor;
            }
        ]);
        
    }
}
