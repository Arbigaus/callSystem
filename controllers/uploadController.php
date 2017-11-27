<?php
class uploadController extends Controller {
	public function __construct(){
		parent::__construct();
	}

	public function send(){
		if(isset($_FILES["file"]) && !empty($_FILES["file"]['tmp_name'])){
			$url = Upload::UploadFile($_FILES);
			Upload::setUrl($url);
			if(isset($_SESSION['img_id']) && !empty($_SESSION)){
				$_SESSION['img_id'] .= ",".Upload::getUrl();
			}else{
				$_SESSION['img_id'] = Upload::getUrl();
			}

		}
	}

}