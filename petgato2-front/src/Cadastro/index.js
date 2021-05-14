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
import Foto from "./cadastro.jpg";
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

const Cadastro = () => {
  const { register, handleSubmit, errors, setError } = useForm();



  const onSubmit = (data) => {
    const p = {
      people:{
        CPF: data.cpf,
        nome: data.nome,
        RG: data.rg,
        data_nasc: data.data_nasc,
        genero: data.genero,
        email: data.email,
        address_attributes:{
          CEP: data.cep,
          endereco: data.endereco,
          numero: data.numero,
          complemento: data.complemento,
          pais: data.pais,
          estado: data.estado,
          cidade: data.cidade,
          bairro: data.bairro,
        }
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
            <Section>Cadastro de Pessoa para Adoção</Section>
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
                
                placeholder="CEP"
                type="text"
                {...register('cep', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Endereço"
                type="text"
                {...register('endereco', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Numero"
                type="text"
                {...register('numero', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Complemento"
                type="text"
                {...register('complemento')}
                errors={errors}
              />
                <Input
                  
                  placeholder="Bairro"
                  type="text"
                  {...register('bairro')}
                  errors={errors}
                />
              <Input
                
                placeholder="Cidade"
                type="text"
                {...register('cidade')}
                errors={errors}
              />
              <Input
                
                placeholder="Estado"
                type="text"
                {...register('estado')}
                errors={errors}
              />
              <Input
                
                placeholder="País"
                type="text"
                {...register('pais')}
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

export default Cadastro;