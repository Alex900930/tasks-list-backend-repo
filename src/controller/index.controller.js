const {db} = require("../config");
const indexController = {}

const getRightTask = (word) => {
  if (word.startsWith('@')) {
    return true;
  } else if (word.startsWith('#')) {
    return true;
  } else if (isValidEmail(word)) {
    return true;
  } else return isValidUrl(word);
};

const isValidEmail = (text) => {
  const emailRegex = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b/;
  return emailRegex.test(text);
};

const isValidUrl = (text) => {
  const urlRegex = /^(http[s]?:\/\/)?[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&amp;:/~\+#]*[\w\-\@?^=%&amp;/~\+#])?$/;
  return urlRegex.test(text);
};

indexController.index = (req, res) => {
  const tarea = req.body.tarea;

  if (!tarea || tarea.trim() === '') {
    return res.status(400).json('La tarea no puede estar vacía');
  }

  const palabra = tarea.split(' ');
  const result = palabra.filter(word => getRightTask(word))

  if (result.length > 1) {
    const query = 'INSERT INTO tasks (task) VALUES (?)';

    db.query(query, [tarea], (err, result) => {
      if (err) {
        console.error('Error al agregar tarea:', err);
        res.status(500).send('Error al agregar tarea');
      } else {
        console.log('Tarea agregada correctamente');
        res.status(200).send('Tarea agregada correctamente');
      }
    });
  } else {
    return res.status(400).json('La tarea no cumple con los parametros establecidos');
  }


}

module.exports = {indexController}