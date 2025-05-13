var database = require("../database/config")

function adicionarimagens(){
    var instrucaoSql = `
    select idusuario as idusuario,c.idcamisa,nome,imagem,preco,marca,ano from favoritas f 
    right join camisa c on
    f.idcamisa = c.idcamisa;
    `
    return database.executar(instrucaoSql);
}

function favoritar(usuario,camisa){
    var instrucaoSql = `
    insert into favoritas values(${usuario},${camisa});
    `
    return database.executar(instrucaoSql);
}

function desfavoritar(usuario,camisa){
    var instrucaoSql = `
    delete from favoritas where idusuario=${usuario} and idcamisa=${camisa};;
    `
    return database.executar(instrucaoSql);
}
module.exports = {
    adicionarimagens,
    favoritar,
    desfavoritar
}