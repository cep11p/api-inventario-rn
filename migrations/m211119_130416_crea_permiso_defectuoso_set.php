<?php

use app\models\AuthItem;
use yii\db\Migration;

/**
 * Class m211119_130416_crea_permiso_defectuoso_set
 */
class m211119_130416_crea_permiso_defectuoso_set extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('auth_item', [
            'name' => 'deftuoso_set',
            'type' => AuthItem::PERMISO,
            'description' => 'Este permiso nos permite setear items defectusos en el inventario'
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211119_130416_crea_permiso_defectuoso_set cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211119_130416_crea_permiso_defectuoso_set cannot be reverted.\n";

        return false;
    }
    */
}
