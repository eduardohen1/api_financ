const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'restback',
    port: 3308,
});

connection.connect((err) => {
    if (err){
        console.log('Erro ao conectar ao banco de dados: ', err);
        return;
    }
    console.log('Conexão ao banco de dados feita com sucesso!');
});

module.exports = connection;