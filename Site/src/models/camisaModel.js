var database = require("../database/config")

function adicionarimagens(){
    var instrucaoSql = `
    select * from camisa;
    `
    return database.executar(instrucaoSql);
}

function checarfavoritos(id){
    var instrucaoSql = `
    select idcamisa from favoritas where idusuario=${id};
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
    desfavoritar,
    checarfavoritos
}