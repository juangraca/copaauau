import { useEffect, useState } from "react";
import Progresso from "../Progresso";
import axios from "axios";
import BarraFiltro from "../BarraFiltro";
import BotaoFigurinha from "../BotaoFigurinha";

export default function Album() {

    const [qtdTotal, setQtdTotal] = useState(0);
    const [qtdPossui, setQtdPossui] = useState(0);
    const [figurinhas, setFigurinhas] = useState([]);
    const [figurinhasExibir, setFigurinhasExibir] = useState([]);
    const [timeSelecionado, setTimeSelecionado] = useState(-1);

    useEffect(() => {
        axios.get("http://localhost/copaauau3IA/api/buscarAlbum.php", {
            withCredentials: true,
        })
            .then(function (resposta) {
                if (resposta.status === 200 && resposta.data) {
                    setQtdTotal(resposta.data.album.QtdTotal);
                    setQtdPossui(resposta.data.album.QtdPossui);
                    setFigurinhas(resposta.data.album.Figurinhas);
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

    useEffect(()=>{
        if (timeSelecionado === -1) {
            setFigurinhasExibir(figurinhas);
        } else {
            const figurinhasTime = figurinhas.filter((item) => item.Time.Codigo == timeSelecionado)
            setFigurinhasExibir(figurinhasTime);
        }
    }, [figurinhas, timeSelecionado]);



    return (
        <>
            <h1 className="tituloPagina">Meu Álbum</h1>
            <Progresso total={qtdTotal} possui={qtdPossui} />
            <BarraFiltro timeSelecionado={timeSelecionado} setTimeSelecionado={setTimeSelecionado}/>
            <section className="areaFigurinhas">
                
                {
                    figurinhasExibir.length > 0 ? (
                        figurinhasExibir.map((item, indice)=>(
                            <BotaoFigurinha key={indice} figurinha={item} setFigurinhas={setFigurinhas}/>
                        ))
                    ) : null
                }
                
                
            </section>
        </>
    );
}