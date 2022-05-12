<?php

namespace app\models;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use yii\helpers\ArrayHelper;
use yii\base\Exception;
/**
 * This is the model class for table "egreso".
 */
class Export
{

    /**
     * Mediante el id de un egreso obtenemos la lista de productos para armar el acta de entrega. Como resultado tenemos un PDF
     *
     * @param [array] $param['id']
     * @return void
     */
    static function exportarActaEgreso($param)
    {
        $model = Egreso::findOne(['id'=>$param['id']]);
        
        if($model==null){
            throw new Exception(json_encode('El egreso no existe'));
        }
        #Cargamos parametros
        $lista_producto = $model->getListaProductoDescripcion();
        $acta = $model->nro_acta;
        $acta_numero = "$acta/".date('y');
        $fecha = date('d/m/Y');
        $para = $model->destino_nombre;
        $de = $model->origen;
        $asunto = isset($param['asunto'])?$model->descripcion:'SIN DEFINIR';
        $localidad = isset($param['destino_localidad'])?$model->localidad:'SIN DEFINIR';
        
        $spreadsheet = new Spreadsheet();
            
        #Estilo Titulo
        $spreadsheet->getActiveSheet()->getStyle('A1:M1')->getFont()->setBold('true')->setUnderline(true);
        $spreadsheet->getActiveSheet()->getStyle('A1:M1')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);

        $sheet = $spreadsheet->getActiveSheet();

        $sheet->setMergeCells(["A1:M1","A3:M3","A5:M5","A7:M7","A9:M9","A11:M11"]);
        $sheet->setCellValue("A1", "ACTA de ENTREGA N°$acta_numero");
        $sheet->setCellValue("A3", "FECHA: $fecha");
        $sheet->setCellValue("A5", "PARA: $para");
        $sheet->setCellValue("A7", "DE: $de");
        $sheet->setCellValue("A9", "ASUNTO: $asunto");
        $sheet->setCellValue("A11", "LOCALIDAD: $localidad");

        #SUB TITULO
        $sheet->mergeCells('A13:M13');
        $sheet->getStyle('A13:M13')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
        $sheet->setCellValue('A13', 'MINISTERIO DE DESARROLLO HUMANO - GOBIERNO DE RIO NEGRO')->getStyle('A13:M13')->getFont()->setBold('true');

        #DETALLE 1
        $sheet->mergeCells('A15:M15');
        $sheet->setCellValue('A15', "Mediante la presente acta, se hace entrega de los sieguientes productos con destino a: $localidad")->getStyle('A15:M15')->getFont();

        #CONTENIDO
        $sheet->mergeCells('A17:D17');
        $sheet->mergeCells('F17:M17');

        #Cabecera de Tabla
        $row = 17;
        $sheet->setCellValue("A$row", 'Producto/s')->getStyle("A$row")->getFont()->setBold('true');
        $sheet->getCell("A$row")->getStyle()->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_HAIR);
        
        $sheet->setCellValue("E$row", 'Can')->getStyle("E$row")->getFont()->setBold('true')->getActiveCell();
        $sheet->getCell("E$row")->getStyle()->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_HAIR);

        $sheet->setCellValue("F$row", 'Descripcion')->getStyle("F$row")->getFont()->setBold('true');
        $sheet->getCell("F$row")->getStyle()->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_HAIR);
       
        #Tabla con lista de productos Creacion Dinamica (se va calculando las cantidad de filas)
        $row ++;
        foreach ($lista_producto as $value) {
            $sheet->mergeCells("A$row:D$row");
            $sheet->mergeCells("F$row:M$row");

            $sheet->setCellValue("A$row", $value['producto']);
            $sheet->getCell("A$row")->getStyle()->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_HAIR);
            
            $sheet->setCellValue("E$row", $value['cantidad']);
            $sheet->getCell("E$row")->getStyle()->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_HAIR);

            $sheet->setCellValue("F$row", $value['descripcion']);
            $sheet->getCell("F$row")->getStyle()->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_HAIR);
            $row++;
        }

        #DETALLE 2
        $row ++;
        $row ++;
        $sheet->mergeCells("A$row:M$row");
        $sheet->setCellValue("A$row", "Para constancia de lo anteior se firma dos (2) copias, en la fecha $fecha será retirado del Deposito del MDH ubicado en Avenida Caseros N°1447, por el señor/a:")->getStyle("A$row:M$row")->getFont();

        // #FIRMA
        $row ++;
        $row ++;
        $sheet->setCellValue("A$row", "Autorizo");
        $sheet->setCellValue("H$row", "Entrego");
        $sheet->setCellValue("M$row", "Recepciono");

        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Mpdf');
 
        $writer->save('php://output');
    }

}
