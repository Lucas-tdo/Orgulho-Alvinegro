var express = require("express");
var router = express.Router();

var camisaController = require("../controllers/camisaController")

router.get("/adicionarimagens",function(req,res){
    camisaController.adicionarimagens(req,res)
})

module.exports = router ;
