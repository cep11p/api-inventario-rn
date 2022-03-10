<?php
namespace app\modules\api\controllers;

use yii\rest\ActiveController;
use yii\web\Response;

use Yii;
use yii\base\Exception;

use app\models\Categoria;
use app\models\Marca;

class CategoriaController extends ActiveController{
    
    public $modelClass = 'app\models\Categoria';
    
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
        unset($actions['update']);
        unset($actions['delete']);
        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
        return $actions;
    }
    
    public function prepareDataProvider() 
    {
        $searchModel = new \app\models\CategoriaSearch();
        $params = \Yii::$app->request->queryParams;
        $resultado = $searchModel->search($params);

        return $resultado;
    }
    
    public function actionCreate() 
    {   $param = Yii::$app->request->post();
        
        $model = new Categoria();
        $transaction = Yii::$app->db->beginTransaction();
        try {
            
            $model->setAttributesCustom($param);
            
            if(!$model->save()){
                throw new Exception(json_encode($model->getErrors()));
            }

            $transaction->commit();
            
            $resultado['message']='Se registra una nueva Categoria';
            $resultado['id']=$model->id;
            
            return  $resultado;
           
        }catch (Exception $exc) {
            $transaction->rollBack();
            $mensaje =$exc->getMessage();
            throw new \yii\web\HttpException(400, $mensaje);
        }
    }

    public function actionUpdate($id) 
    {          
        $param = Yii::$app->request->post();
        $model = Categoria::findOne(['id'=>$id]);
        
        if($model==null){
            throw new Exception(json_encode("La Categoria $id no existe"));
        }
        $transaction = Yii::$app->db->beginTransaction();
        try {
            
            $model->setAttributesCustom($param);
            
            if(!$model->save()){
                throw new Exception(json_encode($model->getErrors()));
            }

            $transaction->commit();
            
            $resultado['message']='Se modifica una Categoria';
            $resultado['id']=$model->id;
            
            return  $resultado;
           
        }catch (Exception $exc) {
            $transaction->rollBack();
            $mensaje =$exc->getMessage();
            throw new \yii\web\HttpException(400, $mensaje);
        }
    }

    public function actionSetActivo($id){
        $param = \Yii::$app->request->post();
        $model = Marca::findOne(['id'=>$id]);

        if($model==null){
            throw new Exception(json_encode('La unidad de medida no existe'));
        }        
        
        $transaction = Yii::$app->db->beginTransaction();
        try {            
            $model->setActivo($param);

            $transaction->commit();
            
            $resultado['message']='Se modifica la unidad de medida';
            $resultado['id']=$model->id;
            
            return  $resultado;
           
        }catch (Exception $exc) {
            $transaction->rollBack();
            $mensaje =$exc->getMessage();
            throw new \yii\web\HttpException(400, $mensaje);
        }
        
        return $resultado;
    }    
}