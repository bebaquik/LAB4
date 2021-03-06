// src/main.js
const knex = require("../db/db.js").knex
const express = require ("express")
const bodyParser = require ("body-parser")
const morgan = require("morgan")
const app = express ()

app.use(morgan("dev"))
app.use(bodyParser.json())

app.get("/online", (req, res) => res.send("ONLINE"))
exports.start = porta => 
  knex.migrate.latest().then( _ => app.listen(porta))
