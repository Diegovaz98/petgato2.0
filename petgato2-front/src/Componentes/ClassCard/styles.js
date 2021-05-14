import styled from 'styled-components'
import { Users } from "react-feather";

export const Card = styled.div`
  border: 1px solid #F0F0F0;
  border-radius: 8px;
  padding: 1em 1.4em;
  display: flex;
  align-items: center;
  justify-content: space-between;
  box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.04);
  cursor: pointer;

  :hover {
    background-color: #f0c0b6;
  }
  `

export const ClassName = styled.h2`
  font-size: 24px;
  font-weight: normal;
`

export const Students = styled.div`
  display: flex;
  align-items: center;
`



export const Number = styled.span`
  font-size: 32px;
  `
