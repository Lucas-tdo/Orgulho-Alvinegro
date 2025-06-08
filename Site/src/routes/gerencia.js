var express = require("express");
var router = express.Router();

var gerenciaController = require("../controllers/gerenciaController")

router.get("/listar/:tipo",function(req,res){
    gerenciaController.listar(req,res)
})

module.exports = router ;
