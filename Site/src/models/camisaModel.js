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
    delete from favoritas where idusuario=${usuario} and idcamisa=${camisa};
    `
    return database.executar(instrucaoSql);
}

function top_favoritas(){
    var instrucaoSql = `
        select c.imagem,count(*) as ordem from camisa c join
        favoritas f on
        f.idcamisa=c.idcamisa  group by f.idcamisa order by count(*) desc limit 10 ;
    `
    return database.executar(instrucaoSql);
}
module.exports = {
    adicionarimagens,
    favoritar,
    desfavoritar,
    checarfavoritos,
    top_favoritas
}