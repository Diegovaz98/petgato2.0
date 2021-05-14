import styled from "styled-components";

export const Input = styled.input`
  border: none;
  outline: ${(props) =>
    props.invalid ? "1px solid " + props.theme.danger : "none"};
  padding: 0.8em 1em;
  width: 100%;
  font-size: 16px;
  ::placeholder {
    color: #707070;
    opacity: 1;
  }

  :focus {
    outline: 1px solid ${(props) => props.theme.primary};
  }
`;
