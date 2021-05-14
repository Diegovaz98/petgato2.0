import React from 'react';
//import './style.css'
import Button from '@material-ui/core/Button';
import { Link, useRouteMatch, useLocation } from "react-router-dom";

const Dashboard = () => {
    return(
        <div>
            <ul>
                <li><Button><Link to="/cadastro" style={{color:"rgba(0, 0, 0, 0.87)", textDecoration: "none" }}>Adicionar Animal</Link></Button></li>
                <li><Button><Link to="/cadastro" style={{color:"rgba(0, 0, 0, 0.87)", textDecoration: "none" }}>Adicionar Pessoa</Link></Button></li>
                <li><Button>Adicionar Vacina</Button></li>
                <li><Button>Adicionar à Farmacinha</Button></li>
                <li><Button>Adicionar Ração ao Estoque</Button></li>
            </ul>
        </div>
    );
}

export default Dashboard;