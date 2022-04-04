<?php

namespace app\models;

use Yii;
use \app\models\base\Usuario as BaseUsuario;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "usuario".
 */
class Usuario extends BaseUsuario
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
