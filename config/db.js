const mysql = require('mysql2/promise');

const mysqlpool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password:'', 
    database: 'user'
});

module.exports =  mysqlpool;