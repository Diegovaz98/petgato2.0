import styled from "styled-components";

//Código do Palmeira Precisa Revisar
export const Layout = styled.div`
  display: flex;
  height: 100vh;
  background-color: #FFF5EE;
`;

export const Image = styled.img`
  width: 50%;
  object-fit: cover;

  @media screen and (max-width: 768px) {
    display: none;
  }
`;

export const Content = styled.div`
  background-color: ${(props) => props.theme.light};
  flex: 1;
  padding: 1em;
  margin:auto;
  
`;

export const Title = styled.h1`
  font-size: 24px;
  font-weight: normal;
  margin: 0.4rem;
`;

export const Form = styled.form`
  margin: auto;
  max-width: 756px;
`;

export const Section = styled.p`
  margin: 1em 0.4em;
`;

export const Grid = styled.div`
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(256px, 1fr));
  grid-gap: 1em;
`;

export const Submit = styled.div`
  margin: 1em 0;
  display: flex;
  justify-content: flex-end;
`;

export const Error = styled.p`
  color: ${(props) => props.theme.danger};
`;

export const GoRegister = styled.a`
  color: ${(props) => props.theme.primary};
  font-weight: 500;
`;
