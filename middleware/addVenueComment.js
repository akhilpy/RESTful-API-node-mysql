var mysql   = require("mysql");
var connection = require("../database");

var addVenueComment = function (req, res) {
var today = new Date();
var create_date = today.toISOString().substring(0, 10);

	var post = {
		user_id:req.currUser.user_id,
		venue_id:req.params.venue_id,
		comment:req.body.comment,
		rating:req.body.rating,
		created_date: create_date	
	}
	
	var query = "INSERT INTO  ?? SET  ?";
			var table = ["venue_comment"];
			query = mysql.format(query,table);
			connection.query(query, post, function(err,rows){
				if(err) {
					res.json({"status" : false, "Message" : "Error executing MySQL query"});
				} else {
					res.json({"status" : true, "Message" : "comment added successfully"});
				}
			});
}

module.exports = addVenueComment;