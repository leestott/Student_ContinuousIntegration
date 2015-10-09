var express = require('express'),
  router = express.Router()

module.exports = function (app) {
  app.use('/', router);
};

router.get('/', function (req, res, next) {
 // db.Article.findAll().then(function (articles) {
    res.render('index', {
      title: 'Slack is the new black',
    questions: [{
        question: "Question1",
        answer: 1   
    },{
        question: "Question2",
        answer: 0   
    },
    {
        question: "Question3",
        answer: 0   
    },
    {
        question: "Question4",
        answer: 1   
    },
    {
        question: "Question5",
        answer: 1   
    }],
    
    
     
    //});
  });
});
