import { collColocacoes, collUser, client } from "../config/db.js";

export async function insererirHistoricoDB(doc) {
  await client.connect();
  collUser.insertOne({
    historico_buscas:{
      termo: doc,
    }
  });
}

export async function mostrarHistorico() {
  try {
    await client.connect();
    console.log('mostra o historico');

    const acheHistorico = {_id:0, historico_buscas:{termo: 1}};
    return await collUser.find().project(acheHistorico).toArray();
  } finally {
    client.close();
  }
}

export async function inserirFavorito(doc) {
  try {
    await client.connect();
    collUser.insertOne({
      favoritos:{
        termo: doc,
      }
    });
  } finally {
    client.close();
  }
}

export async function pesquisaDBC(queryServer) {
  try {
    await client.connect();
    const pipeline=[
      {
        $search: {
          index: "default",
          autocomplete: {
            query: queryServer,
            path: "colocacao"
          }
        },
      },
      {
        $project: {
          _id : 0,
          colocacao:1,
        }
      },
      {
        $sort :{
          colocacao:1
        }
      }
    ];
    console.log('ola');

    return await collColocacoes.aggregate(pipeline).toArray();;
  } finally {
    console.log('fecha!!');
    client.close();
  }
}
