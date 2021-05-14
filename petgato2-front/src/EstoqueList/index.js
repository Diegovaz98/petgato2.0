import React, { useState, useEffect } from "react";
import { getFeedStock } from "../api";
const FeedStockList = () => {
    const [feedstock, setfeedstock] = useState([]);
    useEffect(()=>{
        getFeedStock().then(setfeedstock).catch((err)=>console.log(err));
    },[])
    return feedstock.length == 0 ?(
        <h3>Não há animais em seu banco</h3>
    ):(
        <>
            {feedstock.map((feed)=>(
                <div>
                    <p>{feed}</p>
                    <hr/>
                </div>
            ))}
        </>
    )
}
export default FeedStockList;