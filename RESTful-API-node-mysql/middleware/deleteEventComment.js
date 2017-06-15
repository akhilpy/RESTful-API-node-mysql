var mysql   = require("mysql");
var connection = require("../database");

var deleteEventComment = function(req, res){
	var post= {
		user_id:req.currUser.user_id,
		creater_id:req.body.creater_id,
		event_comment_id:req.params.event_comment_id,
		deleted_status:1
	}

	query = "UPDATE event_comment SET deleted_status="+post.deleted_status+" WHERE user_id="+post.user_id+" OR user_id= "+post.creater_id+" AND event_comment_id="+post.event_comment_id;
	connection.query(query, function(err,rows){
					if(err) {
						res.json({"status" : false, "Message" : "Error executing MySQL query"});
					} else {
						res.json({"status" : true, "Message" : "comment Deleted Successfully"});
					}
				});
}
module.exports= deleteEventComment;