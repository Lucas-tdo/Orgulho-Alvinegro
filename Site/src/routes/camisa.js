var express = require("express");
var router = express.Router();

var camisaController = require("../controllers/camisaController")

router.get("/adicionarimagens",function(req,res){
    camisaController.adicionarimagens(req,res)
})

router.post("/favoritar",function(req,res){
    camisaController.favoritar(req,res)
})

router.delete("/desfavoritar",function(req,res){
    camisaController.desfavoritar(req,res)
})

router.get("/checarfavoritos/:idUsuario",function(req,res){
    camisaController.checarfavoritos(req,res)
})
module.exports = router ;
