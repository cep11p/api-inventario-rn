<?php
namespace app\modules\api\controllers;

use yii\rest\ActiveController;
use yii\web\Response;

use Yii;
use yii\base\Exception;

use app\models\Inventario;
use phpDocumentor\Reflection\Types\Null_;

class InventarioController extends ActiveController{
    
    public $modelClass = 'app\models\Inventario';
    
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
        unset($actions['create']);
//        unset($actions['update']);
//        unset($actions['delete']);
        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
        return $actions;
    }
    
    public function prepareDataProvider() 
    {
        $searchModel = new \app\models\InventarioSearch();
        $params = \Yii::$app->request->queryParams;
        $resultado = $searchModel->search($params);

        return $resultado;
    }
    
    public function actionCreate(){
        $param = Yii::$app->request->post();
        
        $model = new Inventario();
        $transaction = Yii::$app->db->beginTransaction();
        try {
            
            $comprobanteid = $model->newStock($param);

            $transaction->commit();
            
            $resultado['message']='Se guarda un nuevo stock';
            $resultado['comprobanteid']=$comprobanteid;
            
            return  $resultado;
           
        }catch (Exception $exc) {
            $transaction->rollBack();
            $mensaje =$exc->getMessage();
            throw new \yii\web\HttpException(400, $mensaje);
        }
    }

    /**
     * Esta accion permite realizar modificacion de ingresos. Se puede modificar dentro de 2 horas
     *
     * @return void
     */
    public function actionUpdate($id){
        $param = Yii::$app->request->post();
        
        $transaction = Yii::$app->db->beginTransaction();
        try {
            
            $model = Inventario::findOne(['comprobanteid' => $id]);
            if($model == Null){
                throw new Exception('El comprobante a modificar no existe.');
            }
            $comprobanteid = $model->modificarStock($param);

            $transaction->commit();
            
            $resultado['message']='Se modifica un nuevo stock';
            $resultado['comprobanteid']=$comprobanteid;
            
            return  $resultado;
           
        }catch (Exception $exc) {
            $transaction->rollBack();
            $mensaje =$exc->getMessage();
            throw new \yii\web\HttpException(400, $mensaje);
        }
    }
    
     public function actionSetDefectuoso() {
        $param = \Yii::$app->request->post();
        $model = new Inventario();
        $transaction = Yii::$app->db->beginTransaction();
        try {            
            $resultado = $model->setItemDefectuoso($param);

            $transaction->commit();
            
            $resultado['message']="Se registra ".$resultado['cantidad']." producto/s defectuoso/s";
            
            return  $resultado;
           
        }catch (Exception $exc) {
            $transaction->rollBack();
            $mensaje =$exc->getMessage();
            throw new \yii\web\HttpException(400, $mensaje);
        }
        
        return $resultado;
    }  
}
