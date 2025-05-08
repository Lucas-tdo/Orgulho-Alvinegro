var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController")

router.post("/addpontuacao",function(req,res){
    quizController.addpontuacao(req,res)
})

module.exports = router ;