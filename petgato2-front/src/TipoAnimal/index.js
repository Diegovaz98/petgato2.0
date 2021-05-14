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
//import Input from "../Componentes/Input";
import { useForm } from "react-hook-form";
import Input from '@material-ui/core/Input';
import Button from '@material-ui/core/Button';

import {
  Layout,
  Content,
  Title,
  Form,
  Section,
  Submit,
  Grid,
} from "./styles";

const TipoAnimal = () => {
  const { register, handleSubmit, errors, setError } = useForm();



  const onSubmit = (data) => {
    console.log(data);
  };

  return (
    <>
      <Layout>
        <Content>
          <Form onSubmit={handleSubmit(onSubmit)}>
            <Title>PETGATO</Title>
            <Section>Cadastro de Tipo de Animal ao Banco</Section>
            <Grid>
              <Input
                
                placeholder="Nome do tipo"
                type="text"
                {...register('text', { required: true })}
              />
            </Grid>
            <Submit>
              <Button type="submit">CADASTRAR TIPO</Button>
            </Submit>
          </Form>
        </Content>
      </Layout>
    </>
  );
};

export default TipoAnimal;