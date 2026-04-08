export function errosNaExecucao(err, req, res, next) {
  console.error(err);
  res.status(500).json({ erro: "Erro interno do servidor" });
}
