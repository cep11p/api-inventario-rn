<?php

namespace app\models;

use app\components\Help;
use app\components\ServicioInteroperable;
use app\models\ApiUser;
use Exception;
use Yii;
use yii\db\Query;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "user".
 */
class User extends ApiUser
{    
    const ADMIN = 'admin';
    const SOPORTE = 'soporte';
    const USUARIO = 'usuario';

    public function rules()
    {
        return ArrayHelper::merge(
            parent::rules(),
            []
        );
    }

    public function behaviors()
    {
        return ArrayHelper::merge(
            parent::behaviors(),
            [
                # vinculamos el audit
                'bedezign\yii2\audit\AuditTrailBehavior',
            ]
        );
    }

     /**
     * Antes de realizar la validacion de permisos con el RBAC, vamos a chequear que el usuario tenga acceso a el modulo.
     * Se busca el usuario mediante la interoperabilidad con api-user. Pero antes se realiza una validacion de token
     * @param int $id
     * @return User
     */
    static function findByUid($id){
        #Se descodifica el token para saber su origen
        $headers = Yii::$app->request->headers;
        if (preg_match('/^Bearer\s+(.*?)$/', $headers['authorization'], $matches)) {
            $token = $matches[1];
        } else {
            throw new \yii\web\HttpException(403, 'Token invalido');
        }

        #vamos a obtener el usuario si el usuario esta habilitado para realizar la consulta
        $servicioInteroperable = new ServicioInteroperable();
        $resultado = $servicioInteroperable->checkUser('user','usuario',['userid' => $id]);
        
        $model = new self();
        $model->setAttributes($resultado);
        $model->id = $resultado['id'];

        return $model;
    }    


    /**
     * Se vincula el usuario con el rol. Si ya existe la vinculacion no se tira ninguna excepcion
     * @param [array] $param
     * @return void
     */
    static function setRol($param)
    {
        if(!isset($param['rol']) || empty($param['rol'])){
            throw new \yii\web\HttpException(400, "Falta el rol a asignar.");
        }

        if(!isset($param['userid']) || empty($param['userid'])){
            throw new \yii\web\HttpException(400, "Falta el usuario a ser asignado.");
        }

        $rol = $param['rol'];
        $userid = $param['userid'];

        #Chequeamos si el usuario existe
        if(Usuario::findOne(['id'=>$userid])==NULL){
            throw new \yii\web\HttpException(400, json_encode([['usuario'=>'El usuario '.$userid.' no existe']]));
        }

        #Chequeamos si el rol existe
        if(AuthItem::findOne(['name'=>$rol,'type'=>AuthItem::ROLE])==NULL){
            throw new \yii\web\HttpException(400, json_encode([['rol'=>'El rol '.$rol.' no existe']]));
        }

        ######### Asignamos el Rol ###########       
        $auth_assignment = AuthAssignment::findOne(['item_name'=>$rol,'user_id'=>strval($userid)]);
        if($auth_assignment == null){
            $auth_assignment = new AuthAssignment();
            $auth_assignment->setAttributes(['item_name'=>$rol,'user_id'=>strval($userid)]);
            if(!$auth_assignment->save()){
                throw new \yii\web\HttpException(400, Help::ArrayErrorsToString($auth_assignment->errors));
            }
        }

        return true;
    }

    static function unsetRol($param)
    {
        if(!isset($param['rol']) || empty($param['rol'])){
            throw new \yii\web\HttpException(400, "Falta el rol a asignar.");
        }

        if(!isset($param['userid']) || empty($param['userid'])){
            throw new \yii\web\HttpException(400, "Falta el usuario a ser asignado.");
        }

        $rol = $param['rol'];
        $userid = $param['userid'];

        #Chequeamos si el rol existe
        if(AuthItem::findOne(['name'=>$rol,'type'=>AuthItem::ROLE])==NULL){
            throw new \yii\web\HttpException(400, json_encode([['rol'=>'El rol '.$rol.' no existe']]));
        }

        ######### Borramos asignacion de Rol ###########       
        $auth_assignment = AuthAssignment::findOne((['item_name'=>$rol,'user_id'=>strval($userid)]));
        $auth_assignment->delete();

        return true;
    }

    /**
     * Esta funcion inhabilitar u *rol [array] $params
     * @return void
     */
    public function setBaja($params)
    {
        $resultado = false;

        $userPersona = UserPersona::findOne(['userid'=>$this->id]);
        if($userPersona==null){
            throw new \yii\web\HttpException(400, 'No se encuentra la integridad del usuario');
        }

        if(strlen($params['descripcion_baja'])<15){
            throw new \yii\web\HttpException(400, json_encode([['descripcion_baja'=>['La descripcion debe tener 10 caracteres como minimo']]]));
        }
        $userPersona->fecha_baja = date('Y-m-d');
        $userPersona->descripcion_baja = $params['descripcion_baja'];

        if($userPersona->save()){
            $resultado = true;
        }

        return $resultado;
    }

    /**
     * Esta funcion habilita un usuario
     *
     * @param [type] $params
     * @return void
     */
    public function unSetBaja($params)
    {
        $resultado = false;

        $userPersona = UserPersona::findOne(['userid'=>$this->id]);
        if($userPersona==null){
            throw new \yii\web\HttpException(400, 'No se encuentra la integridad del usuario');
        }
        
        $userPersona->fecha_baja = null;
        $userPersona->descripcion_baja = null;
        
        if($userPersona->save()){
            $resultado = true;
        }

        return $resultado;
    }

/**
 * Obtenemos el rol del usuario
 *
 * @return void
 */
    public function getRol(){
        $query = new Query();
        $query->select('name as rol')->from('auth_item');

        $query->leftJoin('auth_assignment','auth_assignment.item_name = auth_item.name');

        $query->where(['auth_item.type'=>AuthItem::ROLE, 'auth_assignment.user_id'=>$this->id]);

        $command = $query->createCommand();
        $rows = $command->queryAll();
        
        $resultado = (isset($rows[0]['rol']))?$rows[0]['rol']:'';

        return $resultado;
    }

    public function fields()
    {
        $fields = ArrayHelper::merge(parent::fields(), [
            "rol"
        ]);
        
        unset($fields['password_hash'],$fields['auth_key']);

        return $fields;
    }
    
}
