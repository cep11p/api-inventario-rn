<?php

use yii\db\Migration;

/**
 * Class m211116_130708_set_rols_to_admin
 */
class m211116_130708_set_rols_to_admin extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        #hacemos que el admin tenga como hijo soporte y usuario
        $this->insert('auth_item_child', [
            'parent' => 'admin',
            'child' => 'soporte',
        ]);
        $this->insert('auth_item_child', [
            'parent' => 'admin',
            'child' => 'usuario',
        ]);

        #Asignamos rols admin al usuario admin
        $this->insert('auth_assignment', [
            'item_name' => 'admin',
            'user_id' => '1'
        ]);

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211116_130708_set_rols_to_admin cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211116_130708_set_rols_to_admin cannot be reverted.\n";

        return false;
    }
    */
}
