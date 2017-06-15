var fs = require('fs')
var mysql   = require("mysql");
var connection = require("../database");

var deleteEventImage = function (req, res){

	image_name= req.params.image_name

 fs.unlinkSync('./images/eventimages/'+image_name);

	var query = "DELETE from event_images where ? = '?'";
	var condition ={image_path:image_name};
	connection.query(query, condition, function(err, result){
 if(err){
 	res.json({"status":false, "message":"error in deletion"});
 }
 else{
 	res.json({"status": true, "message":"image successfully deleted"});
 }
	});




}
module.exports= deleteEventImage;
