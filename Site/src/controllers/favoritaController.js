var favoritaModel = require("../models/favoritaModel")

function qtd_camisas(req,res){
    var id = req.params.idUsuario
    if(id==undefined){
        res.status(400).send("Seu id está undefined")
    }
    else{
        favoritaModel.qtd_camisas(id)
        .then(resposta=>{
            console.log("Quantidade de camisas favoritadas localizadas")
            res.json(resposta)
        })
        .catch(erro=>{
            console.log(erro)
            res.status(500).json(erro.sqlMessage)
        })
    }
}

function listar(req,res){
    var id = req.params.idUsuario
    if(id==undefined){
        res.status(400).send("Seu id está undefined")
    }
    else{
        favoritaModel.listar(id)
        .then(resposta=>{
            console.log("listando camisas favoritas")
            res.json(resposta)
        })
        .catch(erro=>{
            console.log(erro)
            res.status(500).send(erro.sqlMessage)
        })
    }
}
module.exports = {
    qtd_camisas,
    listar
}