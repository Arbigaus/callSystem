<?php
class Fatura extends Model{
  protected static $Table = "tab_fatura";

  public static function getCsv($file) {
      $handle = fopen($file, 'r');
      while (($buffer = fgetcsv($handle, 1000, ";")) !== false) {

        yield $buffer;

        // yield "col_number" => $buffer[0];
        // yield "col_section" => $buffer[1];
        // yield "col_date" => $buffer[2];
        // yield "col_hour" => $buffer[3];
        // yield "col_source" => $buffer[4];
        // yield "col_number_dest" => $buffer[5];
        // yield "col_time" => $buffer[6];
        // yield "col_price" => $buffer[7];
        // yield "col_price2" => $buffer[8];
        // yield "col_info" => $buffer[9];
        // yield "col_info2" => $buffer[10];
        // yield "col_info3" => $buffer[11];
        // yield "col_sub_section" => $buffer[12];
        // yield "col_type_tax" => $buffer[13];
        // yield "col_description" => $buffer[14];
        // yield "col_position" => $buffer[15];
        // yield "col_name_source" => $buffer[16];
        // yield "col_name_target" => $buffer[17];
        // yield "col_code_source" => $buffer[18];
        // yield "col_code_target" => $buffer[19];
      }

      fclose($handle);
  }

  public function UpdateFatura($file){
    $buffer = self::GetCsv($file);

    // $sql = "SET SESSION interactive_timeout = 28800";
    // self::FullRead($sql);
    //
    // $sql = "SET SESSION wait_timeout = 28800;";
    // self::FullRead($sql);

    $sql = "INSERT INTO ". self::$Table." (`col_number`,`col_section`,`col_date`,`col_hour`,`col_source`,`col_number_dest`,`col_time`,`col_price`,`col_price2`,`col_info`,`col_info2`,`col_info3`,`col_sub_section`,`col_type_tax`,`col_description`,`col_position`,`col_name_source`,`col_name_target`,`col_code_source`,`col_code_target`) VALUES";

    foreach ($buffer as $dado) {
      $data = $dado;
      // Fatura::Create($data);
      $sql .= " ('{$data[0]}','{$data[1]}','{$data[2]}','{$data[3]}','{$data[4]}','{$data[5]}','{$data[6]}','{$data[7]}','{$data[8]}','{$data[9]}','{$data[10]}',
      '{$data[11]}','{$data[12]}','{$data[13]}','{$data[14]}','{$data[15]}','{$data[16]}','{$data[17]}','{$data[18]}','{$data[19]}'),";
    }
    $sql = substr($sql, 0, -1);

    self::FullRead($sql);
  }

}
