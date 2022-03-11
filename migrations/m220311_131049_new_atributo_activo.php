<?php

use yii\db\Migration;

/**
 * Class m220311_131049_new_atributo_activo
 */
class m220311_131049_new_atributo_activo extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('unidad_medida','activo',$this->boolean()->defaultValue(1));
        $this->addColumn('categoria','activo',$this->boolean()->defaultValue(1));
        $this->addColumn('proveedor','activo',$this->boolean()->defaultValue(1));
        $this->addColumn('marca','activo',$this->boolean()->defaultValue(1));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m220311_131049_new_atributo_activo cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m220311_131049_new_atributo_activo cannot be reverted.\n";

        return false;
    }
    */
}
