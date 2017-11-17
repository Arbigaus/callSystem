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

  public function CountRows($file){
    $return = count(file($file, FILE_SKIP_EMPTY_LINES));

    return $return;
  }

  public function UpdateFatura($file){
    $buffer = self::GetCsv($file);
    $rows = self::CountRows($file);
    $reg = 1000;
    $step = ceil($rows/$reg);

    $i = 0;
    foreach ($buffer as $dado) {
      $data1[$i] = $dado;
      $i++;
    }

    for ($i=1; $i <= $step; $i++) {
      $sql = "INSERT INTO ". self::$Table." (`col_number`,`col_section`,`col_date`,`col_hour`,`col_source`,`col_number_dest`,`col_time`,`col_price`,`col_price2`,`col_info`,`col_info2`,`col_info3`,`col_sub_section`,`col_type_tax`,`col_description`,`col_position`,`col_name_source`,`col_name_target`,`col_code_source`,`col_code_target`) VALUES";
      $start = ((($reg*$i)-$reg) === 0)?0:($reg*$i)-$reg+1;
      $end = (($reg+$start) > $rows)?$rows:$reg+$start-1;
      $end = ($end == 999)?1000:$end;
      for ($e=$start; $e < $end; $e++):
        $e = ($e === 0)?1:$e;
        $data[$e] = $data1[$e];
        $sql .= " ('{$data[$e][0]}','{$data[$e][1]}','{$data[$e][2]}','{$data[$e][3]}','{$data[$e][4]}','{$data[$e][5]}','{$data[$e][6]}','{$data[$e][7]}','{$data[$e][8]}','{$data[$e][9]}','{$data[$e][10]}','{$data[$e][11]}','{$data[$e][12]}','{$data[$e][13]}','{$data[$e][14]}','{$data[$e][15]}','{$data[$e][16]}','{$data[$e][17]}','{$data[$e][18]}','{$data[$e][19]}'),";
      endfor;
      $sql = substr($sql, 0, -1);
      self::FullCreate($sql);
    }
  }

}
