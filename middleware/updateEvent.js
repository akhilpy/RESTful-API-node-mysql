var mysql   = require("mysql");
var connection = require("../database");

var updateEvent = function (req, res) {
	event_id = req.params.event_id;
var today = new Date();
var mod_date = today.toISOString().substring(0, 10);

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
		modified_date: mod_date
	}
	
	var query = "UPDATE events SET  ? where ?";

			var condition= {event_id:event_id};

			connection.query(query, [post,condition], function(err,rows){
				if(err) {
					res.json({"status" : false, "Message" : "Error executing MySQL query"});
				} else {
					res.json({"status" : true, "Message" : "Event Added successfully"});
				}
			});
}

module.exports = updateEvent;