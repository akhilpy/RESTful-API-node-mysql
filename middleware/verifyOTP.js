var mysql   = require("mysql");
var connection = require("../database");

var verifyOTP = function (req, res) {

	var post = {
			otp_code:req.body.otp_code,
			phone_number:req.body.phone_number
			
	}

	var query = "SELECT phone_number, otp_code FROM ?? WHERE ??=? AND ??=?";

		var table = ["otp_registration", "phone_number", post.phone_number, "otp_code", post.otp_code];

		query = mysql.format(query,table);

		connection.query(query,function(err,rows){
		if(err) {
			res.json({"status" : false, "Message" : "Error executing MySQL query"});
		}
		else {

		if(rows.length==1){

			post.is_verified=1;

			var query = "UPDATE otp_registration SET ? WHERE ?";

	var condition = {phone_number:rows[0].phone_number};

	connection.query(query, [post, condition], function(err,rows){
		if(err) {
			res.json({"status" : false, "Message" : "Error executing MySQL query"});
		}
		else {
			res.json({"status" : true, "Message" : "verification Successfull Please go for next step", "is_verified":1});

		}
	});
		}
		else{
			res.json({"status" : false, "Message" : "Please Enter valid code", "is_verified":0 });
		}
		}
    });
}

		
module.exports = verifyOTP;