<?php

use yii\db\Migration;

/**
 * Class m211119_162122_vincula_producto_crear_al_admin
 */
class m211119_162122_vincula_producto_crear_al_admin extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('auth_assignment', [
            'item_name' => 'producto_crear',
            'user_id' => '1'
        ]);

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211119_162122_vincula_producto_crear_al_admin cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211119_162122_vincula_producto_crear_al_admin cannot be reverted.\n";

        return false;
    }
    */
}
