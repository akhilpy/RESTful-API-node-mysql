var mysql   = require("mysql");
var connection = require("../database");

var deleteVenueComment = function(req, res){
	var post= {
		user_id:req.currUser.user_id,
		creater_id:req.body.creater_id,
		venue_comment_id:req.params.venue_comment_id,
		deleted_status:1
	}

	query = "UPDATE venue_comment SET deleted_status="+post.deleted_status+" WHERE user_id="+post.user_id+" OR user_id= "+post.creater_id+" AND venue_comment_id="+post.venue_comment_id;
	connection.query(query, function(err,rows){
					if(err) {
						res.json({"status" : false, "Message" : "Error executing MySQL query"});
					} else {
						res.json({"status" : true, "Message" : "comment Deleted Successfully"});
					}
				});
}
module.exports= deleteVenueComment;