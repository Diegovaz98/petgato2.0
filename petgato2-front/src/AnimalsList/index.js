import React, { useState, useEffect } from "react";
import { getAnimals } from "../api";
const AnimalsList = () => {
    const [animals, setAnimals] = useState([]);
    useEffect(()=>{
        getAnimals().then(setAnimals).catch((err)=>console.log(err));
    },[])
    return animals.length == 0 ?(
        <h3>Não há animais em seu banco</h3>
    ):(
        <>
            {animals.map((animal)=>(
                <div>
                    <p>{animal}</p>
                    <hr/>
                </div>
            ))}
        </>
    )
}
export default AnimalsList;