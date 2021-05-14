import React from 'react'
import FormControl from '@material-ui/core/FormControl';
import InputLabel from '@material-ui/core/InputLabel';
import FormHelperText from '@material-ui/core/FormHelperText';
import Input from '@material-ui/core/Input';
import Button from '@material-ui/core/Button';
import ButtonBase from '@material-ui/core/ButtonBase';

const handleSubmit = () => {
//faz o submit para api
}

const FormPessoa = () => {
    return(
        <form onSubmit = {handleSubmit}>
            <div  style={{display:"flex"}}>

                <div style={{display:"flex", flexDirection:"column", margin:"25px"}}>

                    <FormControl>
                        <InputLabel htmlFor="nome-input">Nome</InputLabel>
                        <Input id="nome" />
                        
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="cpf-input">CPF</InputLabel>
                        <Input id="cpf" />
                        
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="rg-input">RG</InputLabel>
                        <Input id="rg" />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="telefone-input">Telefone</InputLabel>
                        <Input id="telefone" />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="email-input">Email</InputLabel>
                        <Input id="email" />
                        
                    </FormControl>
                </div>
                <div style={{display:"flex", flexDirection:"column", margin:"25px"}}>
                    <FormControl>
                        <InputLabel htmlFor="cep-input">CEP</InputLabel>
                        <Input id="cep" />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="rua-input">Rua</InputLabel>
                        <Input id="rua" />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="numero-input">Número</InputLabel>
                        <Input id="numero" />
                    </FormControl>
                    <FormControl>
                        <InputLabel htmlFor="complemento-input">Complemento</InputLabel>
                        <Input id="complemento" />
                    </FormControl>
                </div>
            </div>
            
                <Button type = "submit">Cadastrar</Button>
            
        </form>
    );
}

export default FormPessoa;