<?php 
class ClienteController {

    public static function Acessar($email, $senha) {
        $resultado = Cliente::Acessar($email, $senha);
        $cliente = null;

        foreach ($resultado as $linha) {
            $cliente = new Cliente($linha['nm_email'], $linha['nm_cliente']);
        }
        
        return $cliente;
    }
}
?>