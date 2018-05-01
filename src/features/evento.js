// src/features/evento.js
const knex = require("../db").knex
const router = require("express").Router()

router.get("/list", (req,res) => 
  knex("evento").select().then(ret => res.send(ret)))
router.post("/save", (req,res) => 
  knex("evento").insert(req.body,"idevento").then(ret => res.send("OK: "+ret)))
router.put("/save", (req,res) => 
  knex("evento").update(req.body).where("idevento",req.body.idevento).then(ret => res.send("OK: "+ret)))
router["delete"]("/:idevento", (req,res) => 
  knex("evento").del().where("idevento",req.params.idevento).then(ret => res.send("OK: "+ret)))

router.get("/participar/:idpessoa/:idevento", (req,res) => 
  knex("pessoa_evento").insert(req.params).then(ret => res.send("OK")))

router.delete("/sair/:idpessoa/:idevento", (req,res) => 
  knex("pessoa_evento").del().where(req.params).then(ret => res.send("OK")))

exports.router = router
