<?php

use yii\db\Migration;

/**
 * Class m211029_153008_new_column_inactivo_to_table_inventario
 */
class m211029_153008_new_column_inactivo_to_table_inventario extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('inventario', 'inactivo', $this->boolean()->defaultValue(0));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211029_153008_new_column_inactivo_to_table_inventario cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211029_153008_new_column_inactivo_to_table_inventario cannot be reverted.\n";

        return false;
    }
    */
}
