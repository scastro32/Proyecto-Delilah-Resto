const express = require('express');
const bodyparser = require('body-parser');
const Sequelize = require('sequelize');

const app = express();


// const sequelize = new Sequelize('mysql://root:@localhost:3306/clase49');

app.use(bodyparser.json());

app.listen(3000, (req, res) => console.log('Escuchando por el puerto 3000'));