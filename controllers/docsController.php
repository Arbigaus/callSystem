<?php
class docsController extends Controller {
  public function __construct(){
    parent::__construct();
  }

  public function index(){
    $data = array();

    $data['user'] = Users::getLoggedUser($_SESSION['id']);


    $this->loadTemplate('docs/docs',$data);
  }
}
