<?php
class cellController extends Controller{
  public function __construct(){
    parent::__construct();
  }

  public function index(){
    Cell::ReadAll();
    $cell = Cell::getResult();
    self::setData($cell,'cell');
    $this->loadTemplate('admin/cell', self::getData());
  }

  public function csv(){

    $this->loadTemplate('admin/sendcsv', self::getData());
  }

  public function sendcsv(){
    $data  = array();
    if(isset($_FILES['arquivo']) && !empty($_FILES['arquivo']['tmp_name'])):
      $permited = ["text/csv","text/plain"];
      if(Upload::UploadFile($_FILES,$permited)):
        $file = "assets/files/".Upload::getUrl();
        Fatura::UpdateFatura($file);
        $data['return'] = $this->ajaxSuccess("Arquivo enviado com sucesso");
      else:
        $data['return'] = $this->ajaxWarning("Houve erro");
      endif;
    else:
      $data['return'] = $this->ajaxWarning("Insira o arquivo.");
    endif;
  echo json_encode($data);

  }
}
