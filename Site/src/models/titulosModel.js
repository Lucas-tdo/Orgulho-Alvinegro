var database = require("../database/config")

function pegar_dados(id){
    var instrucaoSql = `
    select * from titulo where idtitulo=${id};
    `
    return database.executar(instrucaoSql);
}

function dados_idolos(id){
    var instrucaoSql = `
        select i.nome,i.imagem,i.chegada,i.saida from titulo_dos_idolos ti
        join idolo i on
        i.ididolo = ti.ididolo where idtitulo=${id};
        `
    return database.executar(instrucaoSql);
}

module.exports = {
    pegar_dados,
    dados_idolos
}