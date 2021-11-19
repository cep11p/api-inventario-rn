<?php

use app\models\AuthItem;
use yii\db\Migration;

/**
 * Class m211119_161058_crea_permiso_producto_crear
 */
class m211119_161058_crea_permiso_producto_crear extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('auth_item', ['name' => 'producto_crear', 'type' => AuthItem::PERMISO, 'description' => 'Permite crear productos']);
        
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211119_161058_crea_permiso_producto_crear cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211119_161058_crea_permiso_producto_crear cannot be reverted.\n";

        return false;
    }
    */
}
