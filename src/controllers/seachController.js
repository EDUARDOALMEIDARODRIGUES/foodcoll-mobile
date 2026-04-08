//importação
import { validaPesquisa } from "../services/seachService.js";

export async function pesquisa(req, res, next) {
  try{
    const query = req.query.q;
    console.log("no controler");

    const resultados = await validaPesquisa(query);

    res.json(resultados);
  }catch(err){
    next(err);
  }

}
