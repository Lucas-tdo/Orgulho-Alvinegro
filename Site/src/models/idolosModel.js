var database = require("../database/config")

function pegar_dados(id){
    var instrucaoSql = `
    select * from idolo where ididolo=${id};
    `
    return database.executar(instrucaoSql);
}

function dados_titulos(id){
    var instrucaoSql = `
    select t.nome,t.imagem,t.ano from titulo_dos_idolos ti
    join titulo t on
    t.idtitulo = ti.idtitulo where ididolo=${id};
    `
    return database.executar(instrucaoSql);
}

function enviarcomentario(idusuario,comentario,ididolo){
    var instrucaoSql = `
    insert into comentario value
    (default,${idusuario},'${comentario}','${ididolo}',null,default);
    `
    return database.executar(instrucaoSql);
}
module.exports = {
    pegar_dados,
    dados_titulos,
    enviarcomentario
}