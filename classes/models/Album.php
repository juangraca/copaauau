<?php 
class Album extends Banco {
	public $Figurinhas;
	public $QtdTotal;
	public $QtdPossui;
	
	public function __construct($figurinhas = []) {
		$this->Figurinhas = $figurinhas;
		$this->QtdTotal = 0;
		$this->QtdPossui = 0;
	}

	public static function BuscarProgresso($email) {
		$parametros = [
			'pEmail'=>$email
		];
		return self::Consultar('buscarProgresso', $parametros);
	}

	public static function Buscar($email) {
		$parametros = [
			'pEmail'=>$email
		];
		return self::Consultar('buscarAlbum', $parametros);
	}

	public static function AlterarSituacaoFigurinha($email, $codigoFigurinha, $situacao) {
		$parametros = [
			'pEmail'=>$email,
			'pCodigo'=>$codigoFigurinha,
			'pSituacao'=>$situacao
		];
		self::Executar('alterarSituacaoFigurinha', $parametros);
	}


}
?>