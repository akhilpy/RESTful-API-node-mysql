var mysql   = require("mysql");
var connection = require("../database");

var likeDislike = function(req, res){

		var data={
			user_id:req.currUser.user_id,
			event_id:req.params.event_id,
			liked_status:req.body.liked_status
		}

		query = "SELECT like_dislike_id FROM event_like_dislike WHERE user_id ="+data.user_id+" AND event_id="+data.event_id;
		 
		connection.query(query, function(err,rows){
		if(err) {
			res.json({"status" : false, "Message" : "Error executing MySQL query"});
		}
		else {
			if(rows.length==0){
				var query = "INSERT INTO  ?? SET  ?";
				var table = ["event_like_dislike"];
				query = mysql.format(query,table);
				connection.query(query, data, function(err,rows){
					if(err) {
						res.json({"status" : false, "Message" : "Error executing MySQL query"});
					} else {
						res.json({"status" : true, "Message" : "event liked Successfully"});
					}
				});

			}
			else {
				 liked_status ={
				 	liked_status:req.body.liked_status
				 }
				var query = "UPDATE  event_like_dislike SET  ? WHERE user_id ="+data.user_id+" AND event_id="+data.event_id;

				

				connection.query(query, liked_status, function(err,rows){
					if(err) {
						res.json({"status" : false, "Message" : "Error executing MySQL query"});
					} else {
						res.json({"status" : true, "Message" : "event like changed Successfully"});
					}
				});

			}
		}

});
}
module.exports = likeDislike;