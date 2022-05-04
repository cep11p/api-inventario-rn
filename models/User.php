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

    //  /** CONFIGURACION PARA LA CENTRALIZACION DE USUARIO
    //  * Antes de realizar la validacion de permisos con el RBAC, vamos a chequear que el usuario tenga acceso a el modulo.
    //  * Se busca el usuario mediante la interoperabilidad con api-user. Pero antes se realiza una validacion de token
    //  * @param int $id
    //  * @return User
    //  */
    // static function findByUid($id){
    //     #Se descodifica el token para saber su origen
    //     $headers = Yii::$app->request->headers;
    //     if (preg_match('/^Bearer\s+(.*?)$/', $headers['authorization'], $matches)) {
    //         $token = $matches[1];
    //     } else {
    //         throw new \yii\web\HttpException(403, 'Token invalido');
    //     }

    //     #vamos a obtener el usuario si el usuario esta habilitado para realizar la consulta
    //     $servicioInteroperable = new ServicioInteroperable();
    //     $resultado = $servicioInteroperable->checkUser('user','usuario',['userid' => $id]);
        
    //     $model = new self();
    //     $model->setAttributes($resultado);
    //     $model->id = $resultado['id'];

    //     return $model;
    // }   
    
    /**
     * Se vincula los permisos al usuario. Si el usuario ya tiene vinculado el permiso, no debe ser un error
     *
     * @param [array] $params
     * @param [int] $params['userid']
     * @param [array] $params['lista_permiso']
     * @return void
     */
    static function setAsignacion($params){
        #Validamos que exista el usuario
        if(Usuario::findOne(['id'=>$params['userid']])==NULL){
            throw new \yii\web\HttpException(400, 'El usuario con el id '.$params['userid'].' no existe!');
        }
        
        $transaction = Yii::$app->db->beginTransaction();
        try {
            SELF::limpiarPermisos($params);

            #Asignamos los permisos
            foreach ($params['lista_permiso'] as $value) {
                if((AuthAssignment::findOne(['item_name'=>$value['name'], 'user_id'=>strval($params['userid'])])) === NULL){
                    $auth_assignment = new AuthAssignment();
                    $auth_assignment->setAttributes(['item_name'=>$value['name'],'user_id'=>strval($params['userid'])]);
                    if(!$auth_assignment->save()){
                        throw new \yii\web\HttpException(400, json_encode([$auth_assignment->errors]));
                    }
                }
            }
            
            $transaction->commit();

            return true;
        }catch (\yii\web\HttpException $exc) {
            $transaction->rollBack();
            $mensaje =$exc->getMessage();
            $statuCode =$exc->statusCode;
            throw new \yii\web\HttpException($statuCode, $mensaje);
        }
    }

    static function limpiarPermisos($params){

        #Chequeamos que exista el usuario
        if(!isset($params['userid']) || empty($params['userid'])){
            throw new \yii\web\HttpException(400, json_encode([['error'=>['Falta el usuario']]]));
        }

        #Chequeamos la lista de permisos
        if(!isset($params['lista_permiso']) || empty($params['lista_permiso'])){
            throw new \yii\web\HttpException(400, 'Falta la lista de permisos');
        }

        #Buscamos el permiso distinto a borrar
        $permisos_a_borrar = AuthAssignment::find()->select('item_name')->leftJoin('auth_item i','item_name=i.name')->where(['user_id'=>$params['userid'], 'i.type' => AuthItem::PERMISO])->distinct()->asArray()->all();

        foreach ($params['lista_permiso'] as $k => $new_value) {
            foreach ($permisos_a_borrar as $v => $bd_value) {
                if ($new_value['name'] == $bd_value['item_name'] ) {
                    unset($permisos_a_borrar[$v]);
                }
            }

        }
        
        #Borramos los permisos (auth_assigment)
        if(!empty($params['lista_permiso'])){
            AuthAssignment::deleteAll([
                'user_id'=>$params['userid'],
                'item_name'=>$permisos_a_borrar
            ]);
        }
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

        #Chequeamos si el usuario existe (interoperabilidad con api-user)
        $servicioInteroperable = new ServicioInteroperable();
        $servicioInteroperable->viewRegistro('user','usuario',['id' => $param['userid']]);

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

        #Activamos el usuario si nunca fue activado en el modulo
        self::activarUsuario($userid);

        return true;
    }

    /**
     * Se el usuario no existe en el modulo lo registramos
     *
     * @param [int] $id
     * @return void
     */
    static function activarUsuario($id){
        if(Usuario::findOne(['id' => $id]) == null){
            $model = new Usuario();
            $model->id = $id;
            if(!$model->save()){
                throw new \yii\web\HttpException(400, Help::ArrayErrorsToString($model->errors));
            }
        }
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

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUserPersona()
    {
        return $this->hasOne(UserPersona::className(), ['userid' => 'id']);
    }

    public function fields()
    {
        $fields = ArrayHelper::merge(parent::fields(), [
            "confirmed_at" => function () {
                return date('Y-m-d',$this->confirmed_at);
            },
            "created_at" => function () {
                return date('Y-m-d',$this->created_at);
            },
            "updated_at" => function () {
                return date('Y-m-d',$this->updated_at);
            },
            "last_login_at" => function () {
                return date('Y-m-d H:i:s',$this->last_login_at);
            },
            "last_login_ip" => function () {
                return $this->userPersona->last_login_ip;
            },
            "personaid" => function () {
                return $this->userPersona->personaid;
            },
            "fecha_baja" => function () {
                return ($this->userPersona->fecha_baja)?$this->userPersona->fecha_baja:'';
            },
            "baja" => function () {
                return ($this->userPersona->fecha_baja)?true:false;
            },
            "descripcion_baja" => function () {
                return ($this->userPersona->descripcion_baja)?$this->userPersona->descripcion_baja:'';
            },
            "localidadid" => function () {
                return $this->userPersona->localidadid;
            },
            "rol"

        ]);
        
        unset($fields['password_hash'],$fields['auth_key']);

        return $fields;
    }
    
}
