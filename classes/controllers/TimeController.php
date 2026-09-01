<?php 
class TimeController {

    public static function Listar() {
        $resultado = Time::Listar();
        $times = [];
        foreach ($resultado as $linha) {
            $time = new Time($linha['cd_time'], $linha['nm_time']);
            array_push($times, $time);
        }
        return $times;
    }
}
?>