const express = require('express');
const bodyParser = require('body-parser');
const db = require('./config/db'); // importando o módulo db

const app = express();
app.use(bodyParser.json());

app.get('/api/equipamentos', (req, res) => { 
    const sql = "SELECT * FROM equipment"; //consultando todos os equipamentos

    db.query(sql, (err, result) => {
        if(err){
            res.status(500).json({ error: err.message });
            return;
        }
        res.json(result);
    });
});

const port = process.env.PORT || 5000;
app.listen(port, () => console.log(`Servidor rodando na porta ${port}`));