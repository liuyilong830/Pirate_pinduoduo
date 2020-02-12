var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  port: '3306',
  database : 'pdd_product'
});

connection.connect();

/* connection.query('select * from `swiper`' , function (err, results) {
  if(err) {
    return console.log(err)
  }
  console.log('results:', results)
}) */

module.exports = connection