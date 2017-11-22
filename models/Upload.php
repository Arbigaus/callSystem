<?php 
class Upload extends Model {
	protected static $Table = 'tab_upload';
	protected static $Url;

	//TODO: Função para enviar arquivos.
	public static function UploadFile($file,$permited = ""){
		$data = array();

		if(isset($file) && !empty($permited)) {

			if(in_array($file['arquivo']['type'], $permited)){
				$ext=explode('.',$_FILES['arquivo']['name']);
				array_shift($ext);

				$url = md5(time().rand(0,999)).".".$ext[0];
				$data['file_name'] = $url;

				move_uploaded_file($_FILES['arquivo']['tmp_name'], 'assets/files/'.$url);

				$data['user_id'] = $_SESSION['id'];
				$inserted = self::Create($data);

				return $inserted;
			} else {
				return false;
			}
		}elseif (isset($file)) {
			$ext=explode('.',$_FILES['file']['name']);
			array_shift($ext);

			$url = md5(time().rand(0,999)).".".$ext[0];
			$data['file_name'] = $url;

			move_uploaded_file($_FILES['file']['tmp_name'], 'assets/files/'.$url);

			$data['user_id'] = $_SESSION['id'];
			$inserted = self::Create($data);

			return $inserted;
		}

	}

	public static function setUrl($url){
		self::$Url = $url;
	}

	public static function getUrl(){
		return self::$Url;
	}
	
}