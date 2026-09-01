import axios from "axios";
import { useEffect, useState } from "react";

export default function BarraFiltro(props) {

    const { timeSelecionado, setTimeSelecionado } = props;
    const [times, setTimes] = useState([]);
    

    useEffect(() => {
        axios.get("http://localhost/copaauau3IA/api/buscarTimes.php", {
            withCredentials: true,
        })
            .then(function (resposta) {
                if (resposta.status === 200 && resposta.data) {
                    setTimes(resposta.data.times);
                }
            })
            .catch(function (error) {
                console.warn(error);
                // O que fazer se der erro na requisição
            })
            .finally(function () {
                // O que fazer independente de ter dado erro ou não
            });
    }, []);

    function cmbTime_Change(e) {
        console.log(Number(e.target.value));
        setTimeSelecionado(Number(e.target.value));
    }

    return (
        <section className="areaBarraBusca">
            <select value={timeSelecionado} onChange={cmbTime_Change}>
                <option value="-1">Todos os times</option>
                {
                    times.length > 0 ? (
                        times.map((item)=>(
                            <option key={item.Codigo} value={item.Codigo}>{item.Nome}</option>
                        ))
                    ) : null
                }
            </select>
        </section>

    );
}