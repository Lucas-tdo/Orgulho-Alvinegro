var gerenciaModel = require("../models/gerenciaModel")

function listar(req,res){
    var tipo = req.params.tipo
    if(tipo==undefined){
            res.status(400).send("Seu tipo está undefined")
        }
        else{
            gerenciaModel.listar(tipo)
            .then(resposta=>{
                console.log("Listagem de camisas de gerencia realizada")
                res.json(resposta)
            })
            .catch(erro=>{
                console.log(erro)
                res.status(500).send(erro.sqlMessage)
            })
    }
}

module.exports={
    listar
}