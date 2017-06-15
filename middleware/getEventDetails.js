var mysql   = require("mysql");
var connection = require("../database");


var getEventDetails = function (req, res) {
	event_id=req.params.event_id
  user_id = req.currUser.user_id

		var query = 'SELECT *, (Select count(liked_status) FROM event_like_dislike WHERE liked_status= 0 AND event_id='+event_id+
    ') as dislikes, (Select count(liked_status) FROM event_like_dislike WHERE liked_status= 1 AND event_id='+event_id+
    ') as likes FROM events where event_id='+event_id+
    ';SELECT concat( usr.first_name, " ", usr.last_name) as name, usr.image_path FROM user as usr WHERE user_id='+user_id+
    ';SELECT image_path, caption FROM event_images where event_id='+event_id+
    ';SELECT concat( usr.first_name, " ", usr.last_name) as name, usr.image_path, cmnt.comment, cmnt.created_date FROM event_comment as cmnt, user as usr WHERE cmnt.user_id=usr.user_id AND cmnt.event_id=' +event_id+
    ';SELECT concat( usr.first_name, " ", usr.last_name) as name, usr.image_path, eve.status FROM `event_attendee` as eve, user as usr WHERE eve.user_id=usr.user_id AND eve.event_id=' +event_id;
			connection.query(query, function(err,rows){

           		if(err){
           			res.json({"status" : false, "Message" : "Error executing MySQL query"});
           		}
           		else{
           			var data = {};                               
           			data.basicDetails=rows[0];
                data.creator_info=rows[1];
           			data.images=rows[2];
                data.comments=rows[3];
                data.attendee=rows[4];

           			res.json({"status" : true, "Message" : "events found  successfully", "details":data});
           		}
           	}); 
                   
}

module.exports=getEventDetails;