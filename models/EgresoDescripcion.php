<?php

namespace app\models;

use Yii;
use \app\models\base\EgresoDescripcion as BaseEgresoDescripcion;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "egreso_descripcion".
 */
class EgresoDescripcion extends BaseEgresoDescripcion
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
}
