import axios from 'axios';

const api = axios.create({ baseURL: "http://localhost:3001/" });

export const postPeople = (p) => api.post(`people`, p).then((res)=>res.data);
export const getPeople = () => api.get(`people`).then((res)=>res.data);
export const postVolutaries = (p) => api.post(`voluntaries`, p).then((res)=>res.data);
export const getVolutaries = () => api.get(`voluntaries`).then((res)=>res.data);
export const postAnimals = (p) => api.post(`animals`, p).then((res)=>res.data);
export const getAnimals = () => api.get(`animals`).then((res)=>res.data);
export const postAnimalType = (p) => api.post(`animal_types`, p).then((res)=>res.data);
export const getAnimalType = () => api.get(`animal_types`).then((res)=>res.data);
export const postFeedStock = (p) => api.post(`feed_stocks`, p).then((res)=>res.data);
export const getFeedStock = () => api.get(`feed_stocks`).then((res)=>res.data);