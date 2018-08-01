var express = require('express');
var app = express();
var mysql = require('mysql');

// connect to mysql database
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'join_us_app'
});

connection.connect();

// routes
app.get('/', function(req, res) {
  // res.send('HELLO FROM OUR WEB APP!');
  var q = 'SELECT COUNT(*) AS total FROM users';
  connection.query(q, function(err, results) {
    if (err) throw err;
    const total = results[0].total;
    res.send(`We have ${total} users in our db`);
  });
});

app.get('/joke', function(req, res) {
  var joke =
    'What do you call a dog that does magic tricks? A labracadabrador.';
  res.send(joke);
});

app.get('/random_num', function(req, res) {
  var num = Math.floor(Math.random() * 10) + 1;
  res.send(`Your lucky number is ${num}`);
});

app.listen(8080, function() {
  console.log('App listening on port 8080');
});
