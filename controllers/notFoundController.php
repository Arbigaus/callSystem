<?php
class notFoundController extends Controller {
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$dados = array();

		$this->loadView('default/notfound', $dados);

	}
}
