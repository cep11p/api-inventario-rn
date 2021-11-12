<?php

use yii\db\Migration;

/**
 * Class m211112_120642_comprobante_alter_column
 */
class m211112_120642_comprobante_alter_column extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->alterColumn('comprobante', 'create_at', $this->timestamp()->defaultExpression('CURRENT_TIMESTAMP()'));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211112_120642_comprobante_alter_column cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211112_120642_comprobante_alter_column cannot be reverted.\n";

        return false;
    }
    */
}
