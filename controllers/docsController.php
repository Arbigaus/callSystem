<?php
class docsController extends Controller {
  public function __construct(){
    parent::__construct();
  }

  public function index(){

    $this->loadTemplate('docs/docs',self::getData());
  }
}
