<?php

use yii\db\Migration;

/**
 * Class m211109_162835_add_column_approved_at_to_table_comprobante
 */
class m211109_162835_add_column_approved_at_to_table_comprobante extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('comprobante', 'approved_at', $this->dateTime());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211109_162835_add_column_approved_at_to_table_comprobante cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211109_162835_add_column_approved_at_to_table_comprobante cannot be reverted.\n";

        return false;
    }
    */
}
