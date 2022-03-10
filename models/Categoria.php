<?php

namespace app\models;

use app\components\Help;
use Yii;
use \app\models\base\Categoria as BaseCategoria;
use Exception;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "categoria".
 */
class Categoria extends BaseCategoria
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

    public function setAttributesCustom($values, $safeOnly = true) {
        parent::setAttributes($values, $safeOnly);
        $this->nombre = ucfirst(strtolower($this->nombre));
    }

    /**
     * Seteamos el atributo activo del modelo
     * @param array $param['activo]
     * @return boolean
     * @throws Exception
     */
    public function setActivo($param) {
        $activo = false;
        if(isset($param['activo'])){
            $activo = \app\components\Help::setBoolean($param['activo']);        
        }
        
        $this->activo = \app\components\Help::booleanToInt($activo);
        
        if(!$this->save()){
            throw new Exception(Help::ArrayErrorsToString($this->getErrors()));
        }
        
        return true;
    }

}
