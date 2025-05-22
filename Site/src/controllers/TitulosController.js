var titulosModel = require("../models/titulosModel")

function pegar_dados(req,res){
    var id = req.params.idTitulos
    if(id==undefined){
        res.status(400).send("Seu id está undefined")
    }
    else{
        titulosModel.pegar_dados(id)
        .then(resposta=>{
            console.log("Dados do título localizados")
            res.json(resposta)
        })
        .catch(erro=>{
            console.log(erro)
            res.status(500).send(erro.sqlMessage)
        })
    }
}

function dados_idolos(req,res){
    var id = req.params.idTitulos
    if(id==undefined){
        res.status(400).send("Seu id está undefined")
    }
    else{
        titulosModel.dados_idolos(id)
        .then(resposta=>{
            console.log("idolos que ganharam o título localizados")
            res.json(resposta)
        })
        .catch(erro=>{
            console.log(erro)
            res.status(500).send(erro.sqlMessage)
        })
    }
}

module.exports = {
    pegar_dados,
    dados_idolos
}