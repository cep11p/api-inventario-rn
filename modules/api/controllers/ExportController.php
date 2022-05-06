<?php
namespace app\modules\api\controllers;

use app\models\Egreso;
use yii\rest\ActiveController;
use yii\web\Response;

use yii\base\Exception;

use app\models\Export;
use Mpdf\Mpdf;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Pdf\Mpdf as PdfMpdf;
use Yii;

class ExportController extends ActiveController{
    
    public $modelClass = 'app\models\Comprobante';
    
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
        // unset($actions['create']);
        // unset($actions['update']);
        // unset($actions['view']);
        // unset($actions['index']);
        return $actions;
    }
    
    /**
     * Se exporta un acta como comprobante duplicado listo para ser firmado. El formato de la exportacion es PDF
     *
     * @return void
     */
    public function actionActaEgreso() {
        $params = \Yii::$app->request->queryParams;
        $transaction = Yii::$app->db->beginTransaction();
        try{
            

        #Se prepara la cabecera para exportar el archivo
        header('Access-Control-Allow-Origin: *');
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="egreso.pdf"');
        header('Cache-Control: max-age=0');

        Export::exportarActaEgreso($params);

        exit();
        }catch (Exception $exc) {
            $transaction->rollBack();
            $mensaje =$exc->getMessage();
            throw new \yii\web\HttpException(400, $mensaje);
        }
    }

}