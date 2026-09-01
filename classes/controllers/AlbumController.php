<?php 
class AlbumController {

    public static function Buscar($email) {
        $respostaArrayAssoc = Album::Buscar($email);
        $album = new Album();
        foreach($respostaArrayAssoc as $linha) {
            $time = new Time($linha['cd_time'], $linha['nm_time']);

            $figurinha = new Figurinha(
                $linha['cd_figura'],
                $linha['nm_figura'],
                $time,
                $linha['ic_possui']
            );

            array_push($album->Figurinhas, $figurinha);
        }
        $respostaArrayAssoc = Album::BuscarProgresso($email);
        foreach ($respostaArrayAssoc as $linha) {
            $album->QtdPossui = $linha['qtdPossui'];
            $album->QtdTotal = $linha['qtdTotal'];
        }

        return $album;
    }

    public static function AlterarSituacaoFigurinha($email, $codigoFigurinha, $situacao) {
        Album::AlterarSituacaoFigurinha($email, $codigoFigurinha, $situacao);
    }
}
?>





