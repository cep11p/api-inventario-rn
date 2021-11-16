<?php

namespace app\modules\api\controllers;

use app\models\User;
use app\models\UserPersona;
use yii\rest\ActiveController;
use Yii;
use yii\web\Response;
use dektrium\user\Finder;
use dektrium\user\helpers\Password;
use dektrium\user\Module;
use yii\base\Exception;
use yii\helpers\ArrayHelper;

class UsuarioController extends ActiveController
{
    public $modelClass = 'app\models\ApiUser';
    
    /** @var Finder */
    protected $finder;

    /**
     * @param string $id
     * @param Module $module
     * @param Finder $finder
     * @param array  $config
     */
    public function __construct($id, $module, Finder $finder, $config = [])
    {
        $this->finder = $finder;
        parent::__construct($id, $module, $config);
    }
    
    
    public function behaviors()
    {

        $behaviors = parent::behaviors();     

        $auth = $behaviors['authenticator'];
        unset($behaviors['authenticator']);

        $behaviors['corsFilter'] = [
            'class' => \yii\filters\Cors::className()
        ];

        $behaviors['contentNegotiator']['formats']['application/json'] = Response::FORMAT_JSON;

        $behaviors['authenticator'] = $auth;

        $behaviors['authenticator'] = [
            'class' => \yii\filters\auth\HttpBearerAuth::className(),
        ];

        // avoid authentication on CORS-pre-flight requests (HTTP OPTIONS method)
        $behaviors['authenticator']['except'] = [
            'options',
            'login',
//            'signup',
//            'confirm',
//            'password-reset-request',
//            'password-reset-token-verification',
//            'password-reset'
        ];     

        $behaviors['access'] = [
            'class' => \yii\filters\AccessControl::className(),
            'only' => ['*'],
            'rules' => [
                [
                    'allow' => true,
                    'actions' => ['login'],
                    'roles' => ['?'],
                ],
                [
                    'allow' => true,
                    'actions' => ['index','create','update','view','buscar-persona-por-cuil','baja', 'crear-asignacion', 'listar-asignacion','borrar-asignacion'],
                    'roles' => ['soporte'],
                ]
            ]
        ];



        return $behaviors;
    }
    
    public function actions()
    {
        $actions = parent::actions();
        unset($actions['create']);
        unset($actions['update']);
        unset($actions['view']);
        return $actions;
    }
    
    /**
     * Login action.
     *
     * @return Response|array
     */
    /**
     * Login action.
     *
     * @return Response|array
     */
    public function actionLogin()
    {
        $parametros = Yii::$app->getRequest()->getBodyParams();

        #Intancia de ActiveRecord
        $usuario = $this->finder->findUserByUsernameOrEmail($parametros['username']);       
        
        if(!($usuario !== null && Password::validate($parametros['password_hash'],$usuario->password_hash))){
            throw new \yii\web\HttpException(401, 'usuario o contraseña inválido');
        }
        
        #Buscamos la tabla relacional user_persona
        $userPersona = UserPersona::findOne(['userid'=>$usuario->id]);
        
        #Chequeamos si exite el userpersona
        if($userPersona == null){
            throw new \yii\web\HttpException(401, 'El usuario '.$usuario->id.' tiene una inconsitencia con la tabla user_persona');
        }
        
        #Validamos si el usuario esta habilitado
        if($userPersona->fecha_baja != null){
            throw new \yii\web\HttpException(401, 'El usuario se encuentra inhabilitado');
        }
        
        #Registramos el horario de ingreso
        $usuario->last_login_at = time();
        $usuario->save();

        #Registramos la ip de ingreso
        $userPersona->last_login_ip = Yii::$app->getRequest()->getUserIP();
        $userPersona->save();

        #Generamos el Token
        $payload = [
            'exp'=>time()+3600*8,
            'usuario'=>$usuario->username,
            'uid' => $usuario->id  
        ];
        $token = \Firebase\JWT\JWT::encode($payload, \Yii::$app->params['JWT_SECRET']);

        #Obtenemos el Rol
        $rol = '';
        $roles = \Yii::$app->authManager->getRolesByUser($usuario->id);
        foreach($roles as $value){
            $rol = $value->name;
            break;
        }
        
        #Seteamos principales datos del resultado
        $resultado = [
            'access_token' => $token,
            'username' => $usuario->username,
            'rol' => $rol
        ];
        
        #Si es diferente de admin
        if($rol != 'admin'){
            $resultado = ArrayHelper::merge($userPersona->persona, $resultado);
        }

        return $resultado;
    }
    
    public function actionCreate() {
        $param = Yii::$app->request->post(); 
        $transaction = Yii::$app->db->beginTransaction();
        try {
            
            $model = new \app\models\ApiUser();
            $model->setScenario('register');
            $model->setAttributes($param);
            
            
            if(!$model->register()){
                throw new Exception(json_encode($model->getErrors()));
            }
            
            $transaction->commit();
            $resultado['success'] =  true;
            $resultado['data']['id'] =  $model->id;

            return $resultado;
           
        }catch (Exception $exc) {
            $transaction->rollBack();
            $mensaje =$exc->getMessage();
            throw new \yii\web\HttpException(400, $mensaje);
        }
    }

    /**
     * Esta funcionalidad realiza la busqueda de una persona, si la persona tiene un usuario le vinculamos el usuario, 
     * sino tiene un usuario solo se devolvera la persona, en todo caso si no se encuenta ninguna 
     * de las dos cosas se devuelve success=false
     *
     * @param [int] $cuil
     * @return array
     */
    public function actionBuscarPersonaPorCuil($cuil){
        $data = User::buscarPersonaPorCuil($cuil);
        if($data!=false){
            $resultado['success'] = true;
            $resultado['resultado'] = $data;
        }else{
            $resultado['success'] = false;
        }        

        return $resultado;
    }

    
    
    
}
