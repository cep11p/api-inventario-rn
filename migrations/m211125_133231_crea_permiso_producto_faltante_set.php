<?php

use app\models\AuthItem;
use yii\db\Migration;

/**
 * Class m211125_133231_crea_permiso_producto_faltante_set
 */
class m211125_133231_crea_permiso_producto_faltante_set extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        #Creamos el permiso
        $this->insert('auth_item', [
            'name' => 'producto_faltante_set',
            'type' => AuthItem::PERMISO,
            'description' => 'Se encarga de registrar productos faltantes en comprobante de ingresos de productos'
        ]);

        #Asiganamos el permiso al admin
        $this->insert('auth_assignment', [
            'item_name' => 'producto_faltante_set',
            'user_id' => 1
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211125_133231_crea_permiso_producto_faltante_set cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211125_133231_crea_permiso_producto_faltante_set cannot be reverted.\n";

        return false;
    }
    */
}
