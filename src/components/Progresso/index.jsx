import { useEffect, useState } from "react";

export default function Progresso(props) {

    const {total, possui} = props;
    const [porcentagem, setPorcentagem] = useState(0);

    useEffect(()=>{
        if (!total || !possui) return;
        setPorcentagem((possui*100)/total);
    }, [total, possui]);

    return (
        <section className="areaProgresso">
            <div>
                <p>Progresso</p>
                <p className="destaqueProgresso">{possui}/{total}</p>
            </div>
            <progress className="barraProgresso" value={porcentagem} max="100"></progress>
        </section>
    );
}