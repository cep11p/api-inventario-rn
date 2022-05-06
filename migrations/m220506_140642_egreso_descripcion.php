<?php

use yii\db\Migration;

/**
 * Class m220506_140642_egreso_descripcion
 */
class m220506_140642_egreso_descripcion extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('egreso_descripcion',[
            'id' => $this->primaryKey(),
            'egresoid' => $this->integer(),
            'productoid' => $this->integer(),
            'cantidad' => $this->integer(),
            'descripcion' => $this->text()
        ]);

        $this->addForeignKey('egreso_descripcion_fk','egreso_descripcion','egresoid','egreso','id');
        $this->addForeignKey('egreso_descripcion_producto_fk','egreso_descripcion','productoid','producto','id');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m220506_140642_egreso_descripcion cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m220506_140642_egreso_descripcion cannot be reverted.\n";

        return false;
    }
    */
}
