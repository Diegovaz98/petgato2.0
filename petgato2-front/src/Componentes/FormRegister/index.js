import React from 'react'
import { useForm } from "react-hook-form";

import FormControl from '@material-ui/core/FormControl';
import InputLabel from '@material-ui/core/InputLabel';
import FormHelperText from '@material-ui/core/FormHelperText';
import Input from '@material-ui/core/Input';
import Button from '@material-ui/core/Button';
import ButtonBase from '@material-ui/core/ButtonBase';



const FormRegister = () => {
    const { register, handleSubmit } = useForm();
    const onSubmit = data => console.log(data);
    return(
        <form onSubmit = {handleSubmit(onSubmit)} style={{display:"flex", flexDirection:"column"}}>
            <label>email
                <input name="email"
                placeholder="E-mail"
                type="email"
                ref={register({ required: "Digite um e-mail" })}
                />
            </label>
            <label>cpf
                <input name="cpf"
                type="text"
                ref={register({ required: "Digite um e-mail" })}/>
            </label>
            <label>rg
                <input name="rg"
                placeholder="rg"
                type="text"
                ref={register({ required: "Digite um e-mail" })}/>
            </label>
            <label>nome
                <input name="nomel"
                placeholder="nome"
                type="nome"
                ref={register({ required: "Digite um e-mail" })}/>
            </label>
            <label>senha
                <input name="password"
                placeholder="Senha"
                type="password"
                ref={register({ required: "Digite uma senha" })}/>
            </label> 

           {/* <div  style={{display:"flex"}}>

                <div style={{display:"flex", flexDirection:"column", margin:"25px"}}>

                    <FormControl>
                        <InputLabel htmlFor="nome-input">Nome</InputLabel>
                        <Input 
                            id="nome"
                            name="nome"
                            type="text"
                            ref={register({ required: "Digite seu nome" })} 
                        />
                        
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="cpf-input">CPF</InputLabel>
                        <Input 
                            name="cpf"
                            id="cpf"
                            ref={register({ required: "Digite seu CPF" })} 
                        />
                        
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="rg-input">RG</InputLabel>
                        <Input 
                            name="rg"
                            id="rg"
                            ref={register({ required: "Digite seu RG" })}
                        />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="telefone-input">Telefone</InputLabel>
                        <Input 
                            name="telefone"
                            id="telefone"
                            ref={register({ required: "Digite seu telefone" })}
                        />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="email-input">Email</InputLabel>
                        <Input 
                            name="email"
                            id="email"
                            type="email"
                            ref={register({ required: "Digite um e-mail" })}
                        />
                        
                    </FormControl>
                </div>
                <div style={{display:"flex", flexDirection:"column", margin:"25px"}}>
                    <FormControl>
                        <InputLabel htmlFor="cep-input">CEP</InputLabel>
                        <Input 
                            id="cep"
                            name="cep"
                            ref={register({ required: "Digite seu cep" })}
                        />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="rua-input">Rua</InputLabel>
                        <Input 
                            name="rua"
                            id="rua"
                            ref={register({ required: "Digite sua rua" })}
                        />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="numero-input">Número</InputLabel>
                        <Input 
                            name="numero"
                            id="numero"
                            ref={register({ required: "Digite o numero" })}
                        />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="complemento-input">Complemento</InputLabel>
                        <Input 
                            name="complemento"
                            id="complemento"
                            ref={register({ required: "Digite sua rua" })}
                        />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="senha-input">Senha</InputLabel>
                        <Input 
                            type="password" 
                            name="senha"
                            id="senha"
                            ref={register({ required: "Digite sua senha" })}
                        />
                    </FormControl>
                </div>
            </div> 
             */}
            
            <Button type = "submit">Cadastrar</Button>
        </form>
    );
}

export default FormRegister;