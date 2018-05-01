// src/features/pessoa.js
const knex = require("../db").knex
const router = require("express").Router()

router.get("/list", (req,res) => 
  knex("pessoa").select().then(ret => res.send(ret)))
router.post("/save", (req,res) => 
  knex("pessoa").insert(req.body,"idpessoa").then(ret => res.send("OK: "+ret)))
router.put("/save", (req,res) => 
  knex("pessoa").update(req.body).where("idpessoa",req.body.idpessoa).then(ret => res.send("OK: "+ret)))
router["delete"]("/:idpessoa", (req,res) => 
  knex("pessoa").del().where("idpessoa",req.params.idpessoa).then(ret => res.send("OK: "+ret)))

exports.router = router
