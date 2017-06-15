var mysql   = require("mysql");
var connection = require("../database");


var createEvent = function (req, res) {
var today = new Date();
var create_date = today.toISOString().substring(0, 10);

	var post = {
		creator_id:req.currUser.user_id,
		title:req.body.title,
		description:req.body.description,
		is_public:req.body.is_public,
		time_zone:req.body.time_zone,
		tags:req.body.tags,
		number_of_tickets:req.body.number_of_tickets,
		age_range:req.body.age_range,
		booked_ticket:req.body.booked_ticket,
		venue_id:req.body.venue_id,
		latitude:req.body.latitude,
		longitude:req.body.longitude,
		created_date: create_date	
	}

	var schedule = {
		description:req.body.description,
		start_time:req.body.start_time,
		end_time:req.body.end_time
	}

	var query = "INSERT INTO  ?? SET  ?";
			var table = ["events"];
			query = mysql.format(query,table);
			connection.query(query, post, function(err,rows){
				if(err) {
					res.json({"status" : false, "Message" : "Error executing MySQL query"});
				} else {
					
					 schedule.event_id = rows.insertId;
					 
					var query = "INSERT INTO  ?? SET  ?";
					var table = ["event_schedules"];

			query = mysql.format(query,table);
				connection.query(query, schedule, function(err,rows){
				if(err) {
					res.json({"status" : false, "Message" : "Error executing MySQL query"});
				} else {
					res.json({"status" : true, "Message" : "event Added successfully", "EventInfo": schedule.event_id});
				}
			});
		}
			});
}

module.exports = createEvent;