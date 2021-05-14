import React, { useState, useEffect } from "react";
import { getAnimalType } from "../api";
const AnimalTypeList = () => {
    const [animal_type, setanimal_type] = useState([]);
    useEffect(()=>{
        getAnimalType().then(setanimal_type).catch((err)=>console.log(err));
    },[])
    return animal_type.length == 0 ?(
        <h3>Não há animais em seu banco</h3>
    ):(
        <>
            {animal_type.map((animal_t)=>(
                <div>
                    <p>{animal_t}</p>
                    <hr/>
                </div>
            ))}
        </>
    )
}
export default AnimalTypeList;