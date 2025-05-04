var database = require("../database/config")

function cadastrar(nome,email,senha,telefone){
    var instrucaoSql = `
        INSERT INTO usuario (nome, telefone, email, senha) VALUES ('${nome}', '${telefone}', '${email}', '${senha}');
    `;
    return database.executar(instrucaoSql);
}

module.exports = {
    cadastrar
};