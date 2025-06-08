var database = require("../database/config")

function listar(situacao){
        var instrucaoSql = `
        select * from camisa where situacao="${situacao}" order by idcamisa desc;
        `
    return database.executar(instrucaoSql);
    }

module.exports = {
    listar
}