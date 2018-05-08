#!bin/bash

# Criando diretorios do projeto LAB4
projeto='LAB4'
mkdir ${projeto} && cd ${projeto}

# Frontend
mkdir client
cd client
    
    mkdir src
    cd src
        mkdir assets components router 
        touch main.js 
        touch App.vue
        cd ..
    mkdir config
    cd config
        touch dev.env.js
        touch prod.env.js
        touch test.env.js 
        touch index.js
        cd ..

    mkdir static 
    mkdir test

    npm init -y
    npm install -g firebase-tools
    npm install vue vue-material material-design-icons-iconfont axios --save
    npm install browserify browserify-css vueify budo --save-dev
    cd ..

# Backend
mkdir service 
cd service
    
    mkdir src
    cd src 
        mkdir main
            cd main
            touch main.js 
            echo // src/main.js > main.js
            echo const knex = require'("../db/db.js")'.knex >> main.js
            echo const express = require '("express")' >> main.js
            echo const bodyParser = require '("body-parser")' >> main.js
            echo const morgan = require'("morgan")' >> main.js
            echo const app = express '()' >> main.js
            cd ..

	    mkdir db
       	    cd db
       		touch db.js
       		echo // src/db.js > db.js
       		echo const cfg = require'("../../knexfile")' >> db.js
       		echo const knex = require'("knex")(cfg.development)' >> db.js
       		echo exports.knex = knex >> db.js
            cd ..

        mkdir features
            cd features
            cd ..

	    mkdir routes
	        cd routes
            cd ..


    cd ..

# Iniciando o Projeto e instalando as dependências
    npm init -y
    npm install knex pg express body-parser morgan --save 
    npm install nodemon --save-dev
    
# Preparando o Knex
    knex init 
    rm -rf knexfile.js && wget https://github.com/bebaquik/LAB4/raw/master/knexfile.js
    knex migrate:make schema_inicial --env development

# Criando index.js
    touch index.js
    echo // index.js > index.js
    echo const main = require'("./src/main/main")' >> index.js
    echo console.log'("Server Entry Point!")' >> index.js 
    echo main.start'(3000)' >> index.js

# Criando Script "dev" no package.json
    sed -i '7s/"test":.*1"/"dev": "nodemon index.js"/g' package.json
    
# Criando Readme.md com Informações utilizadas no projeto backend
    touch README.md 
    echo '#' STACK BACKEND'\n' > README.md
    echo '#' Express - http://expressjs.com/ >> README.md
    echo npm install express --save'\n' >> README.md
    echo '#' expressjs - http://expressjs.com/ >> README.md
    echo npm install body-parser --save'\n' >> README.md
    echo '#' Knex - http://knexjs.org/ >> README.md
    echo '#' Contrutor de Consultas SQL >> README.md
    echo npm install knex --save'\n' >> README.md
    echo '#' PostgreSQL - https://www.npmjs.com/package/pg >> README.md
    echo '#' Plugin para conexão ao banco de dados Postgres >> README.md
    echo npm install pg --save'\n' >> README.md
    echo '#' Morgan - http://expressjs.com/ >> README.md
    echo '#' Logger utilizado para registrar os acessos ao serviço >> README.md
    echo npm install morgan --save'\n' >> README.md
    echo '#' Nodemon - https://nodemon.io/ >> README.md
    echo '#' recarrega as alterações feitas no projeto sem matar o serviço >> README.md
    echo npm install nodemon --save-dev'\n' >> README.md
    
 # Baixando Complementos do Projeto
 wget https://github.com/bebaquik/LAB4/raw/master/LICENSE
 wget https://github.com/bebaquik/LAB4/raw/master/LAB4.sh
 cd ..

# Criando arquivo .gitignore para não enviar dependências para o projeto git
echo node_modules > .gitignore

# Iniciando um projeto Git
git init

# Definindo permissões do projeto
chmod 755 -Rf *
