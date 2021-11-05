<?php

use yii\db\Migration;

/**
 * Class m211105_114648_alterColumn_unidad_valor_table_producto
 */
class m211105_114648_alterColumn_unidad_valor_table_producto extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->alterColumn('producto', 'unidad_valor', $this->double());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211105_114648_alterColumn_unidad_valor_table_producto cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211105_114648_alterColumn_unidad_valor_table_producto cannot be reverted.\n";

        return false;
    }
    */
}
