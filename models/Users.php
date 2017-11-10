<?php
class Users extends Model {

	protected static $Table = "tab_users";

	// public static function logar($dados_form){
	// 	$Query = "SELECT * FROM tab_users WHERE user_email = :user_email AND user_pass = :user_pass";
	//
	// 	Users::FullRead($Query, $dados_form);
	// 	return Users::getResult();
	// }

	public static function doLogin($email, $passwd){
		$data = [];
		$passwd = md5($passwd);

		if(self::ReadByField('user_email',$email)):
			$array = self::getResult();
			$array = $array[0];
			if($passwd != $array['user_passwd']):
				$data = 2;
			else:
				$_SESSION['id'] = $array['id'];
				return $data = 3;
			endif;
		else:
			return $data = 1;
		endif;

		return $data;
	}

	public static function getLoggedUser($id){
		$data = [];

		if(self::ReadByField('id',$id)):
			$data = self::getResult();
			$data = $data[0];
			unset($data['user_passwd']);
			return $data;
		endif;
	}
}
