const mysql = require('mysql2');
const db = mysql.createConnection({
   host: process.env.DB_HOST || 'mydemo-project-db.cst4u40c2903.us-east-1.rds.amazonaws.com',
   port: process.env.DB_PORT || '3306',
   user: process.env.DB_USER || 'admin',
   password: process.env.DB_PASS || 'Funky2429',
   database: process.env.DB_NAME || 'react_node_app'
});
module.exports = db;