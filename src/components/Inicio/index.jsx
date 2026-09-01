import { useEffect, useState } from "react";
import { NavLink, Outlet } from "react-router-dom";

export default function Inicio() {

    const [primeiroNome, setPrimeiroNome] = useState("");

    useEffect( ()=>{
        let dadosUsuario = JSON.parse(localStorage.getItem('usuario'));
        let nomeCompleto = dadosUsuario.Nome;
        setPrimeiroNome(nomeCompleto.split(' ')[0]);
    }, []);

    return (
        <>
            <header>
                <div>
                    <div>Olá {primeiroNome}</div>
                    <div className="areaBotoesMenu">
                        <button><span className="material-symbols-outlined">lock</span></button>
                        <button><span className="material-symbols-outlined">logout</span></button>
                    </div>
                </div>
                <nav>
                    <NavLink to="/inicio" end>Meu Álbum</NavLink>
                    <NavLink to="/inicio/repetidas">Figurinhas Repetidas</NavLink>
                </nav>
            </header>
            <main>
                <Outlet/>
            </main>
        </>
    );
}