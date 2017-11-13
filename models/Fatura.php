<?php
class Fatura extends Model{
  protected static $Table = "tab_fatura";

  public static function getCsv($file) {
      $handle = fopen($file, 'r');
      while (($buffer = fgetcsv($handle, 1000, ";")) !== false) {

        yield "col_number" => $buffer[0];
        yield "col_section" => $buffer[1];
        yield "col_date" => $buffer[2];
        yield "col_hour" => $buffer[3];
        yield "col_source" => $buffer[4];
        yield "col_number_dest" => $buffer[5];
        yield "col_time" => $buffer[6];
        yield "col_price" => $buffer[7];
        yield "col_price2" => $buffer[8];
        yield "col_info" => $buffer[9];
        yield "col_info2" => $buffer[10];
        yield "col_info3" => $buffer[11];
        yield "col_sub_section" => $buffer[12];
        yield "col_type_tax" => $buffer[13];
        yield "col_description" => $buffer[14];
        yield "col_position" => $buffer[15];
        yield "col_name_source" => $buffer[16];
        yield "col_name_target" => $buffer[17];
        yield "col_code_source" => $buffer[18];
        yield "col_code_target" => $buffer[19];
      }

      fclose($handle);
  }

  public function UpdateFatura($file){
    $buffer = Fatura::GetCsv($file);

    foreach ($buffer as $key => $value) {
      $data[$key] = $value;
      Fatura::Create($data);
    }
  }

}
