var express = require("express"); //using the express framework, require is the keyword to include the library and store it into the express variable
var app = express(); // set variable app to be an instance of express framework. From now on, app is the express

app.use(express.json()); // json() is a method inbuilt in express to recognize the incoming Request Object from the web client as a JSON Object.

app.listen(8080, "127.0.0.1"); // start the nodejs to be listening for incoming request @ port 8080
console.log("web server running @ http://127.0.0.1:8080"); // output to console
