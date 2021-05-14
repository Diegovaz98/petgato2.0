import React from "react";
import { Card, ClassName} from "./styles";


const ClassCard = ({ name}) => {


  return (
    <Card data-testid="class-card">
      <ClassName>{name}</ClassName>

    </Card>
  );
};

export default ClassCard;
