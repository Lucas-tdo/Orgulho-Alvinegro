var database = require("../database/config")

function addpontuacao(pontuacao,acertos,id){
    var instrucaoSql = `
    insert into quiz(acertos,pontos,fkusuario) values (${pontuacao},${acertos},${id});
    `
    return database.executar(instrucaoSql);
}

module.exports = {
    addpontuacao
}