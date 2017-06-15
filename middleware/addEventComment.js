var mysql   = require("mysql");
var connection = require("../database");

var addEventComment = function (req, res) {
var today = new Date();
var create_date = today.toISOString().substring(0, 10);

	var post = {
		user_id:req.currUser.user_id,
		event_id:req.params.event_id,
		comment:req.body.comment,
		created_date: create_date	
	}
	
	var query = "INSERT INTO  ?? SET  ?";
			var table = ["event_comment"];
			query = mysql.format(query,table);
			connection.query(query, post, function(err,rows){
				if(err) {
					res.json({"status" : false, "Message" : "Error executing MySQL query"});
				} else {
					res.json({"status" : true, "Message" : "comment added successfully"});
				}
			});
}

module.exports = addEventComment;