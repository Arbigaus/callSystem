<?php
class Call extends Model {
	protected static $Table = "tab_call";

public static function getCall(string $user_id, string $area_id){

	$query = "SELECT * FROM ".self::$Table." WHERE user_id = ".$user_id." AND call_area = ".$area_id;
	$result = self::FullRead($query);

	return $result;
	
	}

}

