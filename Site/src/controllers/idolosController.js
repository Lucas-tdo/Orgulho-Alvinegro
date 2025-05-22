var idolosModel = require("../models/idolosModel")

function pegar_dados(req,res){
    var id = req.params.idIdolos
    if(id==undefined){
        res.status(400).send("Seu id está undefined")
    }
    else{
        idolosModel.pegar_dados(id)
        .then(resposta=>{
            console.log("Dado do idolo localizados")
            res.json(resposta)
        })
        .catch(erro=>{
            console.log(erro)
            res.status(500).send(erro.sqlMessage)
        })
    }
}


function dados_titulos(req,res){
    var id = req.params.idIdolos
    if(id==undefined){
        res.status(400).send("Seu id está undefined")
    }
    else{
        idolosModel.dados_titulos(id)
        .then(resposta=>{
            console.log("Títulos do ídolo localizados")
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
    dados_titulos
}