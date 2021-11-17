<?php

use yii\db\Migration;

/**
 * Class m211117_132109_new_permisos
 */
class m211117_132109_new_permisos extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('auth_item', ['name' => 'comprobante_crear','type' => 2,'description' => 'Realiza alta de comprobantes']);
        $this->insert('auth_item', ['name' => 'comprobante_aprobar','type' => 2,'description' => 'Aprueba los comprobantes']);
        $this->insert('auth_item', ['name' => 'alta_egreso','type' => 2,'description' => 'Realiza alta de egresos']);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211117_132109_new_permisos cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211117_132109_new_permisos cannot be reverted.\n";

        return false;
    }
    */
}
