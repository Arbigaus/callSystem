<?php
class dropfileController extends Controller {

	public function __construct(){
		parent::__construct();
	}

	public function index(){

		// Pagination::setTable('tab_clients');
		// $data['lista'] = Pagination::createPagination();
		// $data['links'] = Pagination::createLinks();

		$this->loadTemplate('default/dropfile', self::getData());

	}
}
