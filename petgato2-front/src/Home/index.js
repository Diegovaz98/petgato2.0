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
            </ul>
        </>
    );
}
export default Home;