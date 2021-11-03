<?php

use yii\db\Migration;

/**
 * Class m211103_163839_borrar_fecha_inicial_en_table_comprobante
 */
class m211103_163839_borrar_fecha_inicial_en_table_comprobante extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->dropColumn('comprobante', 'fecha_inicial');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m211103_163839_borrar_fecha_inicial_en_table_comprobante cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m211103_163839_borrar_fecha_inicial_en_table_comprobante cannot be reverted.\n";

        return false;
    }
    */
}
