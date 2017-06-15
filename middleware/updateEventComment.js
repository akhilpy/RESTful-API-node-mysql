var mysql   = require("mysql");
var connection = require("../database");

var updateEventComment = function (req, res) {
var today = new Date();
var modified_date = today.toISOString().substring(0, 10);

	var post = {
		user_id:req.currUser.user_id,
		event_id:req.params.event_id,
		comment:req.body.comment,
		modified_date: modified_date	
	}
	
	var query = "UPDATE event_comment SET ? WHERE ? ";
	var condition = {event_comment_id:req.params.event_comment_id};
			
		
			connection.query(query,[post, condition], function(err,rows){
				if(err) {
					res.json({"status" : false, "Message" : "Error executing MySQL query"});
				} else {
					res.json({"status" : true, "Message" : "comment added successfully"});
				}
			});
}

module.exports = updateEventComment;