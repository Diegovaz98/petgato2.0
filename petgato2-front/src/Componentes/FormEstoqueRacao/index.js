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

const FormEstoqueRacao = () => {
    return(
        <form onSubmit = {handleSubmit}>
            <div style={{display:"flex", flexDirection:"column"}}>

                <FormControl>
                    <InputLabel htmlFor="nome-input">Nome</InputLabel>
                    <Input id="nome-racao" />
                </FormControl>      
                <FormControl>
                    <InputLabel htmlFor="marca-input">Marca</InputLabel>
                    <Input id="marca-racao" />
                </FormControl>
                <FormControl>
                    <InputLabel htmlFor="qtd-input">Quantidade</InputLabel>
                    <Input id="qtd-racao" />
                </FormControl>
                <FormControl>
                    <InputLabel htmlFor="validade-farma-input">Validade</InputLabel>
                    <Input id="validade-racao" />
                </FormControl>
                <FormControl>
                    <InputLabel htmlFor="validade-farma-input">Massa em kg</InputLabel>
                    <Input id="massa-racao" />
                </FormControl>
            </div>

            <Button type = "submit">Adicionar</Button>
        </form>
    );
}

export default FormEstoqueRacao;