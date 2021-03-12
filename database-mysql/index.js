var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '55691719Az',
  database : 'CSF'
});

var selectAll = function(callback) {
  var query = 'SELECT * FROM coach'
  connection.query(query,(err,result)=>{
    if(err){
    return  callback(err,null)
    }
     return callback(null,result)
  })

};
var addPlayer = function(params,callback) {
  var query = 'INSERT INTO player (name, age, Categorie_id) VALUES (?)'
  connection.query(query,[params],(err,result)=>{
    if(err){
      return console.log(err)
    }
    return callback(null,result)
  })
}
var getCategories= function(callback) {
  var query = 'SELECT * FROM categories';
  connection.query(query,(err,result)=>{
    if(err) console.log(err)
    return callback(null,result)
  })
}

module.exports= {
  selectAll,
  addPlayer,
  getCategories
};
