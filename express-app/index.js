var express = require('express');
var app = express();

app.get('/', function(req, res) {
  res.send('HELLO FROM OUR WEB APP!');
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
