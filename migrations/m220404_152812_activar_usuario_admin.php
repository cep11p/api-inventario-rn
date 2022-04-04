<?php

use yii\db\Migration;

/**
 * Class m220404_152812_activar_usuario_admin
 */
class m220404_152812_activar_usuario_admin extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('usuario',[
            "id"=>1,
            "fecha_baja" => date('Y-m-d H:i:s')
        ]);
    }
    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m220404_152812_activar_usuario_admin cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m220404_152812_activar_usuario_admin cannot be reverted.\n";

        return false;
    }
    */
}
