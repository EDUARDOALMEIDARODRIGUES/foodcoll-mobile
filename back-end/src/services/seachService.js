import { mostrarHistorico,pesquisaDBC } from "../models/seachModel.js";

export async function validaPesquisa(query) {
  if (!query) return mostrarHistorico();
  console.log("oia eu  no service");

  return pesquisaDBC(query.toLowerCase());
}
