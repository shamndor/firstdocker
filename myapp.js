var http = require('http');
var rand = Math.floor(Math.random() * 100);
//create a server object:
http.createServer(function (req, res) {
res.writeHead(200, {'Content-Type': 'text/html'});
res.write('Hello World!'); //write a response to the client
res.write('My number is: ' + rand); //write a response to the client
res.end(); //end the response
}).listen(80); //the server object listens on port 80