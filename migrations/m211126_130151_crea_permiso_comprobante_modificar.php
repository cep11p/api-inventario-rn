<?php

use app\models\AuthItem;
use yii\db\Migration;

/**
 * Class m211126_130151_crea_permiso_comprobante_modificar
 */
class m211126_130151_crea_permiso_comprobante_modificar extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        #Creamos el permiso
        $this->insert('auth_item', [
            'name' => 'comprobante_modificar',
            'type' => AuthItem::PERMISO,
            'description' => 'Se encarga de modificar los comprobantes con sus productos'
        ]);

        #Asiganamos el permiso al admin
        $this->insert('auth_assignment', [
            'item_name' => 'comprobante_modificar',
            'user_id' => 1
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211126_130151_crea_permiso_comprobante_modificar cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211126_130151_crea_permiso_comprobante_modificar cannot be reverted.\n";

        return false;
    }
    */
}
