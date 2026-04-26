import { collFavorito } from "../config/db.js";
/*função de inserir favorito de acordo om o id de usuario oferecido*/
export async function inserirFavorito(usuarioID, doc) {
  await collFavorito.updateOne(
    {
      usuarioId: usuarioID,
    },
    {
      $addToSet: {
        colocacoesId: doc,
      },
    },
  );
}
/* função deletar o favorito de acordo com o id de usuari oferecido */
export async function deleteFavorito(usuarioID, colocacoesID) {
  const resultado = await collFavorito.updateOne(
    { usuarioId: usuarioID },
    { $pull: { colocacoesId: colocacoesID } },
  );
  return resultado;
}
