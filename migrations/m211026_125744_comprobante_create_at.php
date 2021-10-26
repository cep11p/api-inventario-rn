<?php

use yii\db\Migration;

/**
 * Class m211026_125744_comprobante_create_at
 */
class m211026_125744_comprobante_create_at extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('comprobante', 'create_at', $this->timestamp());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211026_125744_comprobante_create_at cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211026_125744_comprobante_create_at cannot be reverted.\n";

        return false;
    }
    */
}
