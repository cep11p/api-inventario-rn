<?php

use yii\db\Migration;

/**
 * Class m211119_134308_vincula_permisos_al_admin
 */
class m211119_134308_vincula_permisos_al_admin extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('auth_assignment', [
            'item_name' => 'comprobante_aprobar',
            'user_id' => '1'
        ]);
        $this->insert('auth_assignment', [
            'item_name' => 'comprobante_crear',
            'user_id' => '1'
        ]);
        $this->insert('auth_assignment', [
            'item_name' => 'egreso_alta',
            'user_id' => '1'
        ]);
        $this->insert('auth_assignment', [
            'item_name' => 'defectuoso_set',
            'user_id' => '1'
        ]);
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
        echo "m211119_134308_vincula_permisos_al_admin cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211119_134308_vincula_permisos_al_admin cannot be reverted.\n";

        return false;
    }
    */
}
