<?php
class Controller {
	private static $data = array();

	public function __construct(){
		if(isset($_SESSION['id']) || !empty($_SESSION['id'])){
			self::setData(Users::getLoggedUser($_SESSION['id']),'user');
		}
		self::setData(Template::getMenu(),'menu');
	}

  // TODO: Elemento para setar e buscar a string Data.
	public static function getData(){
		return self::$data;
	}

	public static function setData($info, $key){
		self::$data[$key] = $info;
	}

	public function loadview($viewName, $viewData = array()){
		extract($viewData);
		include 'views/'.$viewName.'.php';
	}

	public function loadTemplate($viewName, $viewData = array()){

		// $count_client = Clients::CountClients();
		include 'views/default/template.php';
	}

	public function loadViewInTemplate($viewName, $viewData = array()){
		extract($viewData);
		include 'views/'.$viewName.'.php';
	}

		// TODO: Funções para retornos ao Ajax.

		public function ajaxSuccess($description, $title = ""){
			if(!empty($title)):
				return ['alert alert-success','fa fa-check',$title,$description];
			endif;
				return ['alert alert-success','fa fa-check','Sucesso',$description];
		}

		public function ajaxError($description, $title = ""){
			if(!empty($title)):
				return ['alert alert-danger','fa fa-ban',$title,$description];
			endif;
				return ['alert alert-danger','fa fa-ban','Erro',$description];
		}

		public function ajaxWarning($description, $title = ""){
			if(!empty($title)):
				return ['alert alert-warning','fa fa-warning',$title,$description];
			endif;
				return ['alert alert-warning','fa fa-warning','Atenção',$description];
		}

		public function ajaxInfo($description, $title = ""){
			if(!empty($title)):
				return ['alert alert-info','fa fa-info',$title,$description];
			endif;
				return ['alert alert-info','fa fa-info','Informação',$description];
		}

		// Fim das funções de retornos
}
