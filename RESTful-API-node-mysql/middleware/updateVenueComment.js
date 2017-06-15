var mysql   = require("mysql");
var connection = require("../database");

var updateVenueComment = function (req, res) {
var today = new Date();
var modified_date = today.toISOString().substring(0, 10);

 var comment_id = req.params.venue_comment_id;
	var post = {
		comment:req.body.comment,
		rating:req.body.rating,
		modified_date: modified_date	
	}
	
	var query = "UPDATE venue_comment SET ? WHERE ? ";
	var condition = {venue_comment_id:comment_id};
				
			connection.query(query,[post, condition], function(err,rows){
				if(err) {
					res.json({"status" : false, "Message" : "Error executing MySQL query"});
				} else {
					res.json({"status" : true, "Message" : "comment updated successfully"});
				}
			});
}

module.exports = updateVenueComment;