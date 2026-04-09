import { app }from "../app.js";

require('dotenv').config();

const port = process.env.PORTA;

app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
