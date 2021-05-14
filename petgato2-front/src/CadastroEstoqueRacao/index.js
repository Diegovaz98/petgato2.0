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
import { postPeople } from "../api";
import Input from '@material-ui/core/Input';
import Button from '@material-ui/core/Button';
import InputLabel from '@material-ui/core/InputLabel';
import { postFeedStock } from "../api";
import Foto from "./food-dog.jpg";
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

const CadastroEstoqueRacao = () => {
  const { register, handleSubmit, errors, setError } = useForm();



  const onSubmit = (data) => {
    const p = {
      feed_stock:{
        quantidade: data.quantidade,
        marca: data.marca,
        nome: data.nome,
        id_tipo_animal: data.id_tipo_animal,
        kg: data.kg,
        
      }
      
    }
    postFeedStock(p).then((res)=>{
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
            <Section>Cadastro de Ração ao Estoque</Section>
            <Grid>
              <Input
                
                placeholder="Quantidade"
                type="text"
                {...register('quantidade', { required: true })}
                errors={errors}
              />
              
              <Input
                
                placeholder="Marca"
                type="text"
                {...register('marca', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Nome"
                type="text"
                {...register('nome', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Kg"
                type="text"
                {...register('kg', { required: true })}
                errors={errors}
              />
              <Input
                
                placeholder="Tipo de Animal - ID"
                type="text"
                {...register('id_tipo_animal', { required: true })}
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

export default CadastroEstoqueRacao;