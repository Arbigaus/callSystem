<?php 
class Upload extends Model {
	protected static $Url;

	public static function setUrl($url){
		self::$Url = $url;
	}

	public static function getUrl(){
		return self::$Url;
	}
	
}