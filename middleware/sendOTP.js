var mysql   = require("mysql");
var connection = require("../database");

var SendOTP = function (req, res) {

	var post = {
		phone_extension:req.body.phone_extension,
		phone_number:req.body.phone_number,
		is_verified:0,
		block_status:0
	}
	post.otp_code=1234;

	var query = "SELECT phone_number FROM ?? WHERE ??=?";

	var table = ["user", "phone_number", post.phone_number];

	query = mysql.format(query,table);

	connection.query(query,function(err,rows){
		if(err) {
			res.json({"status" : false, "Message" : "Error executing MySQL query"});
		}
		else { 
			if(rows.length==0){
				

				var query = "SELECT otp_user_id, otp_times, phone_number FROM ?? WHERE ??=? AND ??=?";

				var table = ["otp_registration", "phone_number", post.phone_number,"block_status", 0];

				query = mysql.format(query,table);

				connection.query(query,function(err,rows){
					
					if(err) {
						res.json({"status" : false, "Message" : "Error executing MySQL query"});
					}
					
					else {
						console.log(rows);

						if(rows.length==1){

							console.log(rows.otp_times);

							data={
								otp_code: 1234,
								otp_times:rows[0].otp_times+1
							}
							console.log(data);

							if(data.otp_times<6){ 

								var query = "UPDATE otp_registration SET ? WHERE ?";

								var condition = {phone_number:post.phone_number};


								connection.query(query, [data, condition], function(err,rows){
									if(err) {
										res.json({"status" : false, "Message" : "Error executing MySQL query"});
									}
									else {
										res.json({"status" : true, "Message" : " OTP successfully sent your Phone", "OTP": '1234'});

									}
								});
							}
							else {

								data={
									block_status:1
								}

								var query = "UPDATE otp_registration SET ? WHERE ? ";

								var condition = {phone_number:post.phone_number};


								connection.query(query, [data, condition], function(err,rows){
									if(err) {
										res.json({"status" : false, "Message" : "Error executing MySQL query"});
									}
									else {
										res.json({"status" : false, "Message" : "tried too many times blocked for a day", });

									}
								});
							}	
						}
						else{
							var query = "SELECT otp_user_id, otp_times, phone_number FROM ?? WHERE ??=? AND ??=?";

							var table = ["otp_registration", "phone_number", post.phone_number,"block_status", 1];

							query = mysql.format(query,table);

							connection.query(query,function(err,rows){

								if(err) {
									res.json({"status" : false, "Message" : "Error executing MySQL query"});
								}
								else{

									if(rows.length==1){
										res.json({"status" : false, "Message" : "phone number is blocked for 24hr please try later"});
									}
									else{
										var query = "INSERT INTO  ?? SET  ?";
										var table = ["otp_registration"];
										query = mysql.format(query,table);

										connection.query(query, post, function(err,rows){
											if(err) {
												res.json({"status" : false, "Message" : "Error executing MySQL query1"});
											} else {
												res.json({"status" : true, "Message" : " OTP successfully sent your Phone", "OTP": '1234'});
											}
										});

									}


								}
							});
						}
					}
				});
			}

			else{
				res.json({"status" : false, "Message" : "Phone Number is already registered"});
			}
		}
	});
}


module.exports = SendOTP;