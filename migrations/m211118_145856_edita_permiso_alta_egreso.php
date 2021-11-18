<?php

use yii\db\Migration;

/**
 * Class m211118_145856_edita_permiso_alta_egreso
 */
class m211118_145856_edita_permiso_alta_egreso extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->update('auth_item', ['name' => 'egreso_alta'], ['name' => 'alta_egreso']);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211118_145856_edita_permiso_alta_egreso cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211118_145856_edita_permiso_alta_egreso cannot be reverted.\n";

        return false;
    }
    */
}
