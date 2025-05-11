var database = require("../database/config")

function adicionarimagens(){
    var instrucaoSql = `
    select idusuario as idusuario,c.idcamisa,nome,imagem,preco,marca,ano from favoritas f 
    right join camisa c on
    f.idcamisa = c.idcamisa;
    `
    return database.executar(instrucaoSql);
}

module.exports = {
    adicionarimagens
}