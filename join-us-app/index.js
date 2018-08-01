var faker = require('faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'join_us_app'
});

connection.connect();

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

var data = [];
for (let i = 0; i < 500; i++) {
  data.push([faker.internet.email(), faker.date.past()]);
}

var q = 'INSERT INTO users (email, created_at) VALUES ?';

connection.query(q, [data], function(error, results) {
  if (error) throw err;
  console.log(results);
});

connection.end();
