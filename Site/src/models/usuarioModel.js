var database = require("../database/config")

function autenticar(email,senha){
    var instrucaoSql = `
        SELECT idusuario as id, nome ,telefone , email, senha FROM usuario WHERE email = '${email}' AND senha = '${senha}';
    `;
    return database.executar(instrucaoSql);
}

function cadastrar(nome,email,senha,telefone){
    var instrucaoSql = `
        INSERT INTO usuario (nome, email, senha) VALUES ('${nome}', '${email}', '${senha}');
    `;
    return database.executar(instrucaoSql);
}

function checaremail(email){
    var instrucaoSql = `
        select * from usuario where email='${email}';
    `;
    return database.executar(instrucaoSql);
}
module.exports = {
    autenticar,
    cadastrar,
    checaremail

};