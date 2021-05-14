import React, { forwardRef } from "react";
import Input from "../Input";
import { Error, Label } from "./styles";

const FormInput = forwardRef(
  ({ label, error, errors, InputComponent = Input, ...props }, ref) => {
    const _error = errors ? errors[props.name] : error;

    return (
      <div>
        {label && <Label htmlFor={props.name}>{label}</Label>}
        <InputComponent {...props} ref={ref} id={props.name} invalid={_error} />
        {_error?.message && <Error>{_error.message}</Error>}
      </div>
    );
  }
);

export { Error };
export default FormInput;
