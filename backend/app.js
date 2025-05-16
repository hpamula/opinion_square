const express = require('express');
const app = express();
// Disable caching FIRST (for development only)
app.use((req, res, next) => {
  res.set('Cache-Control', 'no-store');
  next();
});
app.use(require('morgan')('dev'));
// app.use(express.json()); // for REST API
// app.use(express.urlencoded({ extended: false })); // for classic HTML forms
// app.use(express.static(require('path').join(__dirname, 'public')));
app.use('/', require('./routes/index'));
// app.use('/users', require('./routes/users'));
app.use((req, res) => {res.status(404).send(`<h1>Page does not exist</h1>`)});

module.exports = app;
