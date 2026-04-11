import express from "express";
import { pesquisa } from "../controllers/seachController.js";

const router= express.Router();

router.get('/search', pesquisa);

export { router };
