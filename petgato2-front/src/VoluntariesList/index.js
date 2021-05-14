import React, { useState, useEffect } from "react";
import { getVolutaries } from "../api";
const VoluntariesList = () => {
    const [voluntaries, setVoluntaries] = useState([]);
    useEffect(()=>{
        getVolutaries().then(setVoluntaries).catch((err)=>console.log(err));
    },[])
    return voluntaries.length == 0 ?(
        <h3>Não há animais em seu banco</h3>
    ):(
        <>
            {voluntaries.map((voluntary)=>(
                <div>
                    <p>{voluntary}</p>
                    <hr/>
                </div>
            ))}
        </>
    )
}
export default VoluntariesList;