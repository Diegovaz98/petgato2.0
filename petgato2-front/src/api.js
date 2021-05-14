import axios from 'axios';

const api = axios.create({ baseURL: "http://localhost:3000/" });

export const postPeople = (p) => api.post(`people`, p).then((res)=>res.data);
