// src/main.js
const knex = require("../db/db.js").knex
const express = require ("express")
const bodyParser = require ("body-parser")
const morgan = require("morgan")
const app = express ()
