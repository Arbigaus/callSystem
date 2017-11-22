<?php
class uploadController extends Controller {
	public function __construct(){
		parent::__construct();
	}

	public function send(){
		if(isset($_FILES["file"]) && !empty($_FILES["file"]['tmp_name'])){
			$url = Upload::UploadFile($_FILES);
			Upload::setUrl($url);
			echo Upload::getUrl();
		}
	}

}