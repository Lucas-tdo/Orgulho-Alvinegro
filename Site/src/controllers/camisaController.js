var camisaModel = require("../models/camisaModel")

function adicionarimagens(req,res){
        camisaModel.adicionarimagens()
    .then(resultado=>{
        console.log("Adicionando imagens do site")
        res.json(resultado)
    })
    .catch(erro=>{
        console.log(erro)
        console.log(`\n Houve um erro ao pegar os dados das camisas`,erro.sqlMessage)
        res.status(500).json(erro.sqlMessage)
    })
}

function favoritar(req,res){
    var camisa = req.body.idcamisa
    var usuario = req.body.iduser
    if(camisa==undefined){
        res.status(400).send("O id da camisa é undefined")
    }
    else if(usuario==undefined){
        res.status(400).send("Usuário não logado")
    }
    else{
        camisaModel.favoritar(usuario,camisa)
        .then(resposta=>{
            console.log(`Camisa com id ${camisa} favoritada por ${usuario}`)
            res.json(resposta)
        })
        .catch(erro=>{
            console.log(erro)
            res.status(500).json(erro.sqlMessage)
        })
    }
}

function desfavoritar (req,res){
    var camisa = req.body.idcamisa
    var usuario = req.body.iduser
    if(camisa==undefined){
        res.status(400).send("O id da camisa é undefined")
    }
    else if(usuario==undefined){
        res.status(400).send("Usuário não logado")
    }
    else{
        camisaModel.desfavoritar(usuario,camisa)
        .then(resposta=>{
            console.log(`Camisa com id ${camisa} desfavoritada por ${usuario}`)
            res.json(resposta)
        })
        .catch(erro=>{
            console.log(erro)
            res.status(500).json(erro.sqlMessage)
        })
    }
}


function checarfavoritos(req,res){
    var id = req.params.idUsuario
    if(id==undefined){
        res.status(400).send("Seu id está undefined")
    }
    else{
        camisaModel.checarfavoritos(id)
        .then(resposta=>{
            console.log("Listando camisas favoritadas pelo Usuário")
            res.json(resposta)
        })
        .catch(erro=>{
            console.log(erro)
            res.status(500).json(erro.sqlMessage)
        })
    }
}

function top_favoritas(req,res){
    camisaModel.top_favoritas()
    .then(resposta=>{
        console.log("Listando top 10 camisas mais favoritadas do site")
        res.json(resposta)
    })
    .catch(erro=>{
        console.log(erro)
        res.status(500).json(erro.sqlMessage)
    })
}

module.exports = {
    adicionarimagens,
    favoritar,
    desfavoritar,
    checarfavoritos,
    top_favoritas
}