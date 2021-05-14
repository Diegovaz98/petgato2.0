import React, { useState, useEffect } from "react";
import { getPeople } from "../api";
const PeopleList = () => {
    const [people, setPeople] = useState([]);
    useEffect(()=>{
        getPeople().then(setPeople).catch((err)=>console.log(err));
    },[])
    return people.length == 0 ?(
        <h3>Não há animais em seu banco</h3>
    ):(
        <>
            {people.map((person)=>(
                <div>
                    <p>{person}</p>
                    <hr/>
                </div>
            ))}
        </>
    )
}
export default PeopleList;