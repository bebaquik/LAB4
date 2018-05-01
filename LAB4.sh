#!bin/bash

# Criando diretorios do projeto LAB4
mkdir LAB4 && cd LAB4

# Frontend
mkdir client
cd client
    npm init -y
    cd ..

# Backend
mkdir service 
cd service
    mkdir src
    cd src 
        touch main.js 
        echo // src/main.js > main.js
        echo const knex = require'("./db.js")'.knex >> main.js
        echo const express = require '("express")' >> main.js
        echo const bodyParser = require '("body-parser")' >> main.js
        echo const morgan = require'("morgan")' >> main.js
        echo const app = express '()' >> main.js

        touch db.js
        echo // src/db.js > db.js
        echo const cfg = require'("../knexfile")' >> db.js
        echo const knex = require'("knex")(cfg.development)' >> db.js
        echo exports.knex = knex >> db.js
        
        mkdir features
        cd features
            cd ..
    cd ..

npm init -y
npm install knex mssql express body-parser morgan --save 
npm install nodemon --save-dev
knex init

touch README.md 
echo '#' STACK BACKEND'\n' > README.md
echo '#' Express - http://expressjs.com/ >> README.md
echo npm install express --save'\n' >> README.md
echo '#' expressjs - http://expressjs.com/ >> README.md
echo npm install body-parser --save'\n' >> README.md
echo '#' Knex - http://knexjs.org/ >> README.md
echo '#' Contrutor de Consultas SQL >> README.md
echo npm install knex --save'\n' >> README.md
echo '#' Microsoft SQLServer - https://www.npmjs.com/package/mssql >> README.md
echo '#' Plugin para conexão ao banco de dados SQL Server >> README.md
echo npm install mssql --save'\n' >> README.md
echo '#' Morgan - http://expressjs.com/ >> README.md
echo '#' Logger utilizado para registrar os acessos ao serviço >> README.md
echo npm install morgan --save'\n' >> README.md
echo '#' Nodemon - https://nodemon.io/ >> README.md
echo '#' recarrega as alterações feitas no projeto sem matar o serviço >> README.md
echo npm install nodemon --save-dev'\n' >> README.md
cd ..

# Não subir as dependencias para o projeto git
echo node_modules > .gitignore

# Iniciando um projeto Git
git init

# Definindo permissões do projeto
chmod 755 -Rf *
