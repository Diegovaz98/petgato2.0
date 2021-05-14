import React from 'react'
import { Link, useRouteMatch, useLocation } from "react-router-dom";

const Home = () => {
    return(
        <>
            <ul>
                <li>
                <li>
                    <Link to = "/voluntaryregister"> Cadastro de Voluntário</Link>
                </li>
                    <Link to = "/dashboard"> Dashboard</Link>
                </li>
                <li>
                    <Link to = "/register"> Cadastro</Link>
                </li>
                <li>
                    <Link to = "/tipoanimal"> Tipo Animal</Link>
                </li>
                <li>
                    <Link to = "/animalregister"> Cadastro Animal</Link>
                </li>
                <li>
                    <Link to = "/foodstock"> Cadastro Ração ao Estoque</Link>
                </li>
                <li>
                    <Link to = "/people"> Pessoas</Link>
                </li>
                <li>
                    <Link to = "/voluntaryindex"> Index Voluntary</Link>
                </li>
                <li>
                    <Link to = "/animalindex"> Index Animal</Link>
                </li>
                <li>
                    <Link to = "/tipoanimalindex"> Index Animal Type</Link>
                </li>
                <li>
                    <Link to = "/foodstockindex"> Index Food Stock</Link>
                </li>
            </ul>
        </>
    );
}
export default Home;