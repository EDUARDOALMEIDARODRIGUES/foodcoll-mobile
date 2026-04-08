//IMPORTAÇÃO
import { MongoClient } from "mongodb";
require('dotenv').config();

//constantes
const uri =  process.env.URI;
export const client = new MongoClient(uri);

export const collUser = client.db(process.env.DB_1).collection(process.env.COLL_2);
export const collColocacoes = client.db(process.env.DB_1).collection(process.env.COLL_2);
