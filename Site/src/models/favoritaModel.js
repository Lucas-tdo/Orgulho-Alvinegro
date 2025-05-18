var database = require("../database/config")

function qtd_camisas(id){
    var instrucaoSql = `
    select count(*) as quantidade from favoritas where idusuario=${id};
    `
    return database.executar(instrucaoSql);
}

function listar(id){
    var instrucaoSql = `
   select c.nome,c.imagem,c.preco,c.marca,c.ano from camisa c join favoritas f on 
    f.idcamisa=c.idcamisa where f.idusuario=${id};
    `
    return database.executar(instrucaoSql);
}
module.exports = {
    qtd_camisas,
    listar
}