var mysql   = require("mysql");
var connection = require("../database");
var updateVenue = function (req, res) {

	var post = {
		creator_id:req.currUser.userid,
		title:req.body.title,
		description:req.body.description,
		notes:req.body.notes,
		max_hours:req.body.max_hours,
		min_hours:req.body.min_hours,
		discount:req.body.discount,
		price:req.body.price,
		space_type:req.body.space_type,
		checkin_time:req.body.checkin_time,
		checkout_time:req.body.checkout_time,
		address:req.body.address,
		city:req.body.city,
		country:req.body.country,
		latitude:req.body.latitude,
		longitude:req.body.longitude
	}

	var query = "UPDATE venues SET ? WHERE ?";

	var condition = {venue_id:req.params.venue_id};

	connection.query(query, [post, condition], function(err,rows){
		if(err) {
			res.json({"status" : false, "Message" : "Error executing MySQL query"});
		}
		else {
			res.json({"status" : true, "Message" : " venue Successfully updated", "venue":condition.venue_id});

		}
	});
}

module.exports=updateVenue;