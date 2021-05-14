import React from 'react';
import FormLogin from './../Componentes/FormLogin';
import './style.css'
const Login = () => {
    return(
        <div className="hero-login">
            <div className="login-esquerda"></div>
            <div className="login-form">
                <h1 className="title">Login</h1>
                <FormLogin/>
            </div>
        </div>
    );
}

export default Login;