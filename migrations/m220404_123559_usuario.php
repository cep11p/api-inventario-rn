<?php

use yii\db\Migration;

/**
 * Class m220404_123559_usuario
 */
class m220404_123559_usuario extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->dropTable('user_persona');

        $this->createTable('usuario',[
            'id' => $this->primaryKey(),
            'fecha_baja' => $this->dateTime(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m220404_123559_usuario cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m220404_123559_usuario cannot be reverted.\n";

        return false;
    }
    */
}
