<?php 
class Cliente extends Banco {
	public $Email;
	public $Nome;

	public function __construct($email = null, $nome = null) {
		$this->Email = $email;
		$this->Nome = $nome;
	}

	public static function Acessar($email, $senha) {
		$parametros = [
			'pEmail'=>$email,
			'pSenha'=>$senha
		];
		return self::Consultar("acessar", $parametros);
	}
}
?>