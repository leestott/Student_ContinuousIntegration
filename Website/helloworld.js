var http = require('http')
var port = process.env.PORT || 1337;
http.createServer(function(req, res) {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('<h1>Imagine there is a boy wearing a T shirt with a Microsoft Logo on\n</h1>');
}).listen(port);

