// import React from 'react';
// import FormRegister from './../Componentes/FormRegister';
// import './style.css'
// const Cadastro = () => {
//     return(
//         <div className="hero-cadastro">
//             <div className="cadastro-esquerda"></div>
//             <div className="cadastro-form">
//                 <h1 className="title">Cadastro</h1>
//                 <FormRegister/>
//             </div>
//         </div>
//     );
// }

import React from "react";
import { Redirect } from "react-router-dom";
//import Input from "../Componentes/Input";
import { useForm } from "react-hook-form";
import Input from '@material-ui/core/Input';
import Button from '@material-ui/core/Button';
import InputLabel from '@material-ui/core/InputLabel';
import Foto from "./doguinho.jpg";
import {
  Layout,
  Image,
  Content,
  Title,
  Form,
  Section,
  Submit,
  Grid,
  GoRegister,
} from "./styles";

const VoluntarioCadastro = () => {
  const { register, handleSubmit, errors, setError } = useForm();



  const onSubmit = (data) => {
    const p = {
      volunteers:{
        CPF: data.cpf,
        nome: data.nome,
        RG: data.rg,
        data_nasc: data.data_nasc,
        genero: data.genero,
        email: data.email,
      }
      
    }
    console.log(p);
  };

  return (
    <>
      <Layout>
        <Image src={Foto} alt="Pessoa estudando" />
        <Content>
          <Form onSubmit={handleSubmit(onSubmit)}>
            <Title>PETGATO</Title>
            <Section>Cadastro de Voluntário</Section>
            <Grid>
              <Input
                
                placeholder="E-mail"
                type="email"
                {...register('email', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Nome"
                type="text"
                {...register('nome', { required: true })}
                errors={errors}
              />
              
              <Input
                
                placeholder="Gênero"
                type="text"
                {...register('genero', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="CPF"
                type="text"
                {...register('cpf', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="RG"
                type="text"
                {...register('rg', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Data de Nascimento"
                type="text"
                {...register('data_nasc', { required: true })}
                errors={errors}
              />
              <Input
                placeholder="Senha"
                type="password"
                {...register('senha', { required: true })}
                errors={errors}
              />
            </Grid>
            <Submit>
              <Button type="submit">CADASTRAR</Button>
            </Submit>
          </Form>
        </Content>
      </Layout>
    </>
  );
};

export default VoluntarioCadastro;