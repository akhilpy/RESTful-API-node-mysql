
var mysql   = require("mysql");
var express = require("express");
var connection = require("../database");

var updateProfile = function(req,res){

	var post  = {
		first_name:req.body.first_name,
		last_name:req.body.last_name,
		email:req.body.email,
		dob:req.body.dob,
		latitude:req.body.latitude,
		longitude:req.body.longitude,
		device_type:req.body.device_type,
		device_token:req.body.device_token,
		time_zone:req.body.time_zone,
		country:req.body.country,
		city:req.body.city,
		phone_extension:req.body.phone_extension,
		phone_number:req.body.phone_number
	};

	console.log(req.params.user_id);

	var query = "UPDATE user SET ? WHERE ?";

	var condition = {userid:req.currUser.userid};


	connection.query(query, [post, condition], function(err,rows){
		if(err) {
			res.json({"status" : false, "Message" : "Error executing MySQL query"});
		}
		else {
			res.json({"status" : true, "Message" : " user Successfully updated", "userId":req.currUser.userid});

		}
	});
}

module.exports = updateProfile;


