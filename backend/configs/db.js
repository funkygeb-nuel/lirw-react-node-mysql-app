const mysql = require('mysql2');
const db = mysql.createConnection({
   host: 'mydemo-project-db.cst4u40c2903.us-east-1.rds.amazonaws.com',
   port: '3306',
   user: 'admin',
   password: 'Funky2429',
   database: 'react_node_app'
});
module.exports = db;