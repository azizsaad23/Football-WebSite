var express = require('express');
var bodyParser = require('body-parser');

var db = require('../database-mysql');


var app = express();

app.use(bodyParser.json())
app.use(express.static(__dirname + '/../react-client/dist'));


app.get('/api/coach',function(req,res){
  db.selectAll(function(err,result){
    if(err) res.status(500)
    res.status(200).json(result)
  })
})
app.post('/api/player', function(req,res){
  console.log(req.body.Name)
  db.addPlayer([req.body.Name, req.body.age, req.body.categorie_id], function(err,result){
   if(err) res.status(500)
   console.log(result)
   res.status(201).json(result)
  })
})
app.get('/api/categories', function(req,res){
  db.getCategories(function(err,result){
    if(err) res.status(500)
    res.status(200).json(result)
  })
})

app.listen(3000, function() {
  console.log('listening on port 3000!');
});

