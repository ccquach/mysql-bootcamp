var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var faker = require('faker');
var mysql = require('mysql');

app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(__dirname + '/public'));

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'join_us_app'
});

connection.connect();

app.get('/', function(req, res) {
  const q = 'SELECT COUNT(*) AS total FROM users';
  connection.query(q, function(err, results) {
    if (err) throw err;
    const total = results[0].total;
    // res.send(`There are ${total} users in our database`);
    res.render('home', { total });
  });
});

app.post('/register', function(req, res) {
  var person = { email: req.body.email };
  connection.query('INSERT INTO users SET ?', person, function(error, results) {
    if (error) throw error;
    res.redirect('/');
  });
});

// SELECTING DATA ======================================================================

// const q = `
//   SELECT COUNT(*) AS total
//   FROM users
// `;

// connection.query(q, function(error, results, fields) {
//   if (error) throw error;
//   console.log(results[0].total);
// });

// DYNAMICALLY INSERT DATA ==============================================================

// var person = {
//   email: faker.internet.email(),
//   created_at: faker.date.past()
// };

// console.log(person);

// const end_result = connection.query('INSERT INTO users SET ?', person, function(
//   error,
//   results
// ) {
//   if (error) throw error;
//   console.log(results);
// });

// console.log(end_result.sql);

// BULK INSERT DATA ======================================================================

// var data = [];
// for (let i = 0; i < 500; i++) {
//   data.push([faker.internet.email(), faker.date.past()]);
// }

// var q = 'INSERT INTO users (email, created_at) VALUES ?';

// connection.query(q, [data], function(error, results) {
//   if (error) throw err;
//   console.log(results);
// });

// connection.end();

app.listen(8080, function() {
  console.log(`Serving Join Us app on port 8080`);
});
