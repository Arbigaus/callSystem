<?php
class Fatura extends Model{
  protected static $Table = "tab_fatura";

  public static function getCsv($file) {
      $handle = fopen($file, 'r');
      while (($buffer = fgetcsv($handle, 1000, ";")) !== false) {
        $buffer = array_map("utf8_encode",$buffer);

        yield $buffer;
      }

      fclose($handle);
  }

  public static function CountRows($file){
    $return = count(file($file, FILE_SKIP_EMPTY_LINES));

    return $return;
  }

  // TODO: Enviando os dados do CSV ao BD step by step.
  public static function UpdateFatura($file){
    $buffer = self::GetCsv($file);
    $rows = self::CountRows($file);
    $reg = 1000;
    $step = ceil($rows/$reg);

    $i = 0;
    foreach ($buffer as $dado) {
      $data1[$i] = $dado;
      $i++;
    }
  // TODO: Inserindo cada coluna da tabela
    for ($i=1; $i <= $step; $i++) {
      $sql = "INSERT INTO ". self::$Table." (`col_number`,`col_section`,`col_date`,`col_hour`,`col_source`,`col_number_dest`,`col_time`,`col_price`,`col_price2`,`col_info`,`col_info2`,`col_info3`,`col_sub_section`,`col_type_tax`,`col_description`,`col_position`,`col_name_source`,`col_name_target`,`col_code_source`,`col_code_target`) VALUES";
      $start = ((($reg*$i)-$reg) === 0)?0:($reg*$i)-$reg+1;
      $end = (($reg+$start) > $rows)?$rows:$reg+$start-1;
      $end = ($end == 999)?1000:$end;
      for ($e=$start; $e < $end; $e++):
        $e = ($e === 0)?1:$e;
        $data[$e] = $data1[$e];
        $sql .= " ('{$data[$e][0]}','{$data[$e][1]}','".date('Y-m-d', strtotime(str_replace('/','-',$data[$e][2])))."','{$data[$e][3]}','{$data[$e][4]}','{$data[$e][5]}','{$data[$e][6]}','".str_replace(",",".",$data[$e][7])."','".str_replace(",",".",$data[$e][8])."','".str_replace(",",".",$data[$e][9])."','{$data[$e][10]}','{$data[$e][11]}','{$data[$e][12]}','{$data[$e][13]}','{$data[$e][14]}','{$data[$e][15]}','{$data[$e][16]}','{$data[$e][17]}','{$data[$e][18]}','{$data[$e][19]}'),";
      endfor;
      $sql = substr($sql, 0, -1);
      self::FullCreate($sql);
    }
  }

}
