import axios from "axios";

export default function BotaoFigurinha(props) {

    const { figurinha, setFigurinhas } = props;

    function btnFigurinha_Click() {
        axios.put("http://localhost/copaauau3IA/api/alterarSituacaoFigurinha.php",
            {
                "codigoFigurinha": figurinha.Codigo,
                "situacao": figurinha.Possui === 1 ? 0 : 1
            },
            {
                withCredentials: true,
            }
        ).then(function (resposta) {
            if (resposta.status === 200 && resposta.data) {
                console.log(resposta.data);
                setFigurinhas((figurinhas) => figurinhas.map(
                    (item)=> item.Codigo === figurinha.Codigo ? {...item, Possui: figurinha.Possui === 1? 0: 1} : item
                ));
                // setFigurinhas((figurinhas)=> figurinhas.map(
                //     (item) => item.Codigo === figurinha.Codigo ? {
                //         Codigo: item.Codigo,
                //         Nome: item.Nome,
                //         Possui: figurinha.Possui === 1 ? 0 : 1,
                //         Time: {
                //             Codigo: item.Time.Codigo,
                //             Nome: item.Time.Nome
                //         }
                //     } : item
                // ))
            }
        })
            .catch(function (error) {
                console.warn(error);
                // O que fazer se der erro na requisição
            })
            .finally(function () {
                // O que fazer independente de ter dado erro ou não
            });
    }

    return (
        <button
            className={`figurinha ${figurinha.Possui === 1 ? 'possui' : ''}`}
            onClick={btnFigurinha_Click}
        >
            <p className="iconeSituacao">
                <span className="material-symbols-outlined">
                    {
                        figurinha.Possui === 1 ? 'check_circle' : 'close_small'
                    }
                </span>
            </p>
            <p className="numero">{String(figurinha.Codigo).padStart(3, '0')}</p>
            <p className="nome">{figurinha.Nome}</p>
        </button>
    );
}