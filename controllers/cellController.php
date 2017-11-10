<?php
class cellController extends Controller{
  public function __construct(){
    parent::__construct();
  }

  public function index(){
    $data = array();

    $data['user'] = Users::getLoggedUser($_SESSION['id']);
    $data['cell'] = Cell::ReadAll();

    $row = 1;
    if (($handle = fopen(BASE."/assets/files/claro.csv", "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
            $teste[$row] = $data;
            $row++;
        }
        fclose($handle);

        $count = count($teste);

        for ($i =1; $i < $count; $i++){
          $form['col_number'] = $teste[$i][0];
          $form['col_section'] = $teste[$i][1];
          $form['col_date'] = $teste[$i][2];
          $form['col_hour'] = $teste[$i][3];
          $form['col_source'] = $teste[$i][4];
          $form['col_number_dest'] = $teste[$i][5];
          $form['col_time'] = $teste[$i][6];
          $form['col_price'] = $teste[$i][7];
          $form['col_price2'] = $teste[$i][8];
          $form['col_info'] = $teste[$i][9];
          $form['col_info2'] = $teste[$i][10];
          $form['col_info3'] = $teste[$i][11];
          $form['col_sub_section'] = $teste[$i][12];
          $form['col_type_tax'] = $teste[$i][13];
          $form['col_description'] = $teste[$i][14];
          $form['col_position'] = $teste[$i][15];
          $form['col_name_source'] = $teste[$i][16];
          $form['col_name_target'] = $teste[$i][17];
          $form['col_code_source'] = $teste[$i][18];
          $form['col_code_target'] = $teste[$i][19];
          Fatura::Create($form);
        }

        // echo "<pre>";
        // print_r($teste);
        // echo "</pre>";die;
    }

    $this->loadTemplate('admin/cell', $data);
  }

  public function csv(){
    $data = array();
    $data['user'] = Users::getLoggedUser($_SESSION['id']);



    $this->loadTemplate('admin/sendcsv', $data);
  }

  public function sendcsv(){
    $data  = array();
    if(isset($_FILES['arquivo']) && !empty($_FILES['arquivo']['tmp_name'])):
      $permited = ["text/csv","text/plain"];
      if(Cell::sendFile($_FILES,$permited)):
        $data['return'] = $this->ajaxSuccess("Arquivo enviado");
      else:
        $data['return'] = $this->ajaxWarning("Houve erro");
      endif;
    else:
      $data['return'] = $this->ajaxWarning("Insira o arquivo.");
    endif;
  echo json_encode($data);

  }
}
