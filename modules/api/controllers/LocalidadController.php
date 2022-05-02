<?php
namespace app\modules\api\controllers;

use app\components\ServicioInteroperable;
use app\components\ServicioInventario;
use yii\rest\ActiveController;
use yii\web\Response;

use Yii;
use yii\base\Exception;


class LocalidadController extends ActiveController{
    
    public $modelClass = 'app\models\Marca';
    
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
        $behaviors['authenticator']['except'] = ['options'];     

        $behaviors['access'] = [
            'class' => \yii\filters\AccessControl::className(),
            'only' => ['@'],
            'rules' => []
        ];



        return $behaviors;
    }
    
    public function actions()
    {
        $actions = parent::actions();
        unset($actions['index']);
        unset($actions['view']);
        unset($actions['create']);
        unset($actions['update']);
        return $actions;
    
    }
    
    /**
     * Esta accion permite hacer una interoperabilidad con el sistema registral
     * @return array()
     */
    public function actionIndex()
    {
        $resultado['estado']=false;
        $param = Yii::$app->request->queryParams;
        $param['provinciaid'] = 16; // Rio negro
        $param['extra'] = 1; // Seteamos el flags para injectar localidades extras
        // $param['pagesize'] = 5000; // Seteamos el flags para injectar localidades extras

        $servicioInteroperable = new ServicioInteroperable();
        $resultado = $servicioInteroperable->buscarRegistro('lugar','localidad',$param);
        
        return $resultado;

    }

    public function actionCreate(){
        #Chequeamos el permiso
        if (!\Yii::$app->user->can('localidad_crear')) {
            throw new \yii\web\HttpException(403, 'No se tienen permisos necesarios para ejecutar esta acción');
        }

        $resultado['message']='Se registra una nueva localidad';
        $param = Yii::$app->request->post();

        $response = \Yii::$app->lugar->crearLocalidad($param);

        if(isset($response['message'])){
            throw new \yii\web\HttpException(400, $response['message']);
        }

        $resultado['success']=true;
        $resultado['data']['id']=$response;

        return $resultado;
        
    }
    
    
    
}