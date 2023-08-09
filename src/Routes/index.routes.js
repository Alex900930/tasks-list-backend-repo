const express = require('express');
const routes = express.Router();
const {indexController} = require('../controller/index.controller');

routes.post('/agregar-tarea', indexController.index);

module.exports = {routes}