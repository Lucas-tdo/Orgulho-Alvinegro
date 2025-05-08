var quizModel = require("../models/quizModel")

function addpontuacao(req,res){
    var pontuacao = req.body.PontuacaoServer
    var acertos = req.body.AcertosServer
    var id = req.body.idServer
    if(pontuacao==undefined){
        res.status(400).send("Sua pontuação está undefined")
    }
    else if(acertos==undefined){
        res.status(400).send("Seus acertos estão undefined")
    }
    else if(id==undefined){
        res.status(400).send("Seu id está undefined")
    }
    else{
        quizModel.addpontuacao(pontuacao,acertos,id)
        .then(
            function(resultado){
                res.json(resultado)
            }
        ).catch(
            function (erro){
                console.log(erro)
                console.log('\nHoyve ao inserir dados do quiz!Erro: ',
                erro.sqlMessage
                )
                res.status(500).json(erro.sqlMessage)
            }
        )
            
    }
}

module.exports = {
    addpontuacao
}