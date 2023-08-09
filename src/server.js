const express = require('express');
const cors = require("cors");
const app = express();
const port = 3001;
const {routes} = require('./Routes/index.routes');

app.use(express.json());
app.use(cors({origin: 'http://localhost:3000'}));
app.use(routes);

app.listen(port, () => {
  console.log(`Servidor escuchando en el puerto ${port}`);
});
