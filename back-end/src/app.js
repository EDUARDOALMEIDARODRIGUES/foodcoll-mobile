import express from "express";
import cors from "cors";
import { router } from "./routes/seachRoutes.js";
import { errosNaExecucao } from "./middlewares/seachMiddleware.js";

//constantes
const app = express();

//app.use
app.use(cors());
app.use(express.json());
app.use(router);
app.use(errosNaExecucao);

export { app };
