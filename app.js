var express = require ('express');
var app = express();

app.get ('/', function (req,res) {
	res.send('to-do-list version 0.0.2');
});

app.listen(3000,function () {
	console.log('Listening on port 3000!');
});
