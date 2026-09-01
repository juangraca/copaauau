<?php 
class Figurinha extends Banco {
	public $Codigo;
	public $Nome;
	public $Time;
	public $Possui;
	
	public function __construct($codigo = null, $nome = null, $time = null, $possui = null) {
		$this->Codigo = $codigo;
		$this->Nome = $nome;
		$this->Time = $time;
		$this->Possui = $possui;
	}
}
?>