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

const FormLogin = () => {
    return(
        <form onSubmit = {handleSubmit}>
            <div style={{display:"flex", flexDirection:"column"}}>

                <FormControl>
                    <InputLabel htmlFor="email-input">Email</InputLabel>
                    <Input id="email" />
                </FormControl>      
                <FormControl>
                    <InputLabel htmlFor="senha-input">Senha</InputLabel>
                    <Input id="senha" />
                </FormControl>
            </div>

            <Button type = "submit">Logar</Button>
        </form>
    );
}

export default FormLogin;