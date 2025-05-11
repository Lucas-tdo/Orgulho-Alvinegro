var camisaModel = require("../models/camisaModel")

function adicionarimagens(req,res){
    camisaModel.adicionarimagens()
    .then(resultado=>{
        res.json(resultado)
    })
    .catch(erro=>{
        console.log(erro)
        console.log(`\n Houve um erro ao pegar os dados das camisas`,erro.sqlMessage)
        res.status(500).json(erro.sqlMessage)
    })
}

module.exports = {
    adicionarimagens
}