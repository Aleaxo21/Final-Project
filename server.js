var express = require("express"); //using the express framework, require is the keyword to include the library and store it into the express variable
var app = express(); // set variable app to be an instance of express framework. From now on, app is the express

var db = require("./db-connection");

app.use(express.static("./public"));

app.use(express.json()); // json() is a method inbuilt in express to recognize the incoming Request Object from the web client as a JSON Object.

const path =require('path');

app.use(express.static(path.join(__dirname,'public')));

app.listen(8080, "127.0.0.1"); // start the nodejs to be listening for incoming request @ port 8080
console.log("web server running @ http://127.0.0.1:8080"); // output to console


app.route('/view').get( function (req, res){
    var sql = "SELECT * FROM `e-commerce`.product";
    db.query(sql,function(error,result){
        if(error){
            throw error;
        }else{
            res.json(result);
        }
    });
});

app.route('/update/:id').put(function(req,res){
    var sql = "UPDATE `e-commerce`.product SET name = ?, description = ?, price = ?, category_id = ?, picture = ? WHERE id = ?";
    var parameter = [req.body.name, req.body.description, req.body.price, req.body.cateogry_id, req.body.picture, req.params.id];
    db.query(sql,parameter,function(error,result){
        if(error){
            throw error;
        }else{
            res.json(result);
        }
    });
});


app.route('/add').post(function(req,res){
    var sql = "INSERT INTO `e-commerce`.product (name, description, price, category,_id, picture) VALUES(?,?,?,?,?)";
    console.log("Hello");
    var parameter = [req.body.name, req.body.description, req.body.price, req.body.cateogry_id, req.body.picture];
    db.query(sql,parameter,function(error,result){
        if(error){
            throw error;
        }else{
            res.json(result);
        }
    });
});

app.route('/update/:id').delete(function(req,res){
    var sql = "DELETE FROM `e-commerce`.product WHERE id = ?";
    var parameter = [req.params.id];
    db.query(sql,parameter,function(error,result){
        if(error){
            throw error;
        }else{
            res.json(result);
        }
    });
});


