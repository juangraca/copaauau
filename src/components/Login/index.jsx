import axios from "axios";
import { useState } from "react";
import Carregando from "../Carregando";
import { useNavigate } from "react-router-dom";

export default function Login() {

    const [email, setEmail] = useState("");
    const [senha, setSenha] = useState("");
    const [entrando, setEntrando] = useState(false);
    const [mensagem, setMensagem] = useState(null);

    const navigate = useNavigate();

    function txtEmail_Change(e) {
        setEmail(e.target.value);
    }

    function txtSenha_Change(e) {
        setSenha(e.target.value);
    }

    function btnEntrar_Click() {

      
        if (email.trim() === "") {
            setMensagem('E-mail é obrigatório!');
            return;
        }

        if (senha.trim() === "") {
            setMensagem('Senha é obrigatória!');
            return;
        }

        setEntrando(true);
        axios.post("http://localhost/copaauau3IA/api/acessar.php",
            {
                "email": email,
                "senha": senha
            },
            {
                withCredentials: true,
            }
        ).then(function (resposta) {
            if (resposta.status === 200 && resposta.data) {
                if ("mensagem" in resposta.data) {
                    setMensagem(resposta.data.mensagem);
                } else {
                    localStorage.setItem('usuario', JSON.stringify(resposta.data.cliente) );
                    navigate("/inicio");
                }
            }
        })
            .catch(function (error) {
                console.warn(error);
                // O que fazer se der erro na requisição
            })
            .finally(function () {
                setEntrando(false);
            });
    }

    return (
        <>
        {entrando ? <Carregando/> : null }
        {mensagem !== null ? (<div className='msg erro'>{mensagem}</div>) : null}
        <section className="fundoEntrada">
            <section className="telaLogin">
                <div className="area_logo_sistema">
                    <img alt="Logo do Sistema" src="images/logo.png" />
                </div>

                <p>
                    <input
                        placeholder="Informe seu E-mail"
                        maxLength="100"
                        type="text"
                        value={email}
                        onChange={txtEmail_Change}
                    />
                </p>

                <p>
                    <input
                        placeholder="Informe sua Senha"
                        maxLength="64"
                        type="password"
                        value={senha}
                        onChange={txtSenha_Change}
                    />
                </p>

                <div className="area_botoes">
                    <button className="linkBotao">Cadastre-se</button>
                    <button className="linkBotao">Esqueci minha senha</button>
                    <button className="botao" onClick={btnEntrar_Click}>
                        <span className="material-symbols-outlined iconeBotao">login</span> Entrar
                    </button>
                </div>
            </section>
        </section>
        </>
    );
}
