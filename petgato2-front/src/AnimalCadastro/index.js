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
import Foto from "./dog-red.jpg";
import { postAnimals } from '../api';
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

const AnimalCadastro = () => {
  const { register, handleSubmit, errors, setError } = useForm();



  const onSubmit = (data) => {
    const p = {
      animal:{
        nome: data.nome,
        idade: data.idade,
        data_chegada: data.data_chegada,
        adotado: data.adotado,
        raca: data.raca,
        id_setor: data.id_setor,
        id_tipo_animal: data.id_tipo_animal,

      }
    }
    postAnimals(p).then((res)=>{
      console.log(res);
    }).catch((err)=>{
      console.log(err);
    })
  };

  return (
    <>
      <Layout>
      <Image src={Foto} alt="Pessoa estudando" />
        <Content>
          <Form onSubmit={handleSubmit(onSubmit)}>
            <Title>PETGATO</Title>
            <Section>Cadastro de Animal</Section>
            <Grid>
              <Input
                
                placeholder="Nome"
                type="text"
                {...register('nome', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Idade"
                type="text"
                {...register('idade', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Data de chegada"
                type="text"
                {...register('data_chegada', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Adotado?"
                type="text"
                {...register('adotado', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="ID do Setor"
                type="text"
                {...register('id_setor', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="ID Tipo Animal"
                type="text"
                {...register('id_tipo_animal', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Raça"
                type="text"
                {...register('raca', { required: true })}
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

export default AnimalCadastro;