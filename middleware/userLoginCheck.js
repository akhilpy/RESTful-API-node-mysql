
var mysql   = require("mysql");
var express = require("express");
var md5 = require("MD5");
var jwt = require('jsonwebtoken'); // used to create, sign, and verify tokens
var config = require('../config');
var connection = require("../database"); // get our config file


var userLoginCheck = function (req, res) {

	var post  = {
		password:req.body.password,
		email:req.body.email,
		ip_address:req.body.ip_address
	}

	var query = "SELECT * FROM ?? WHERE ??=? AND ??=?";

	var table = ["user","password",  md5(post.password), "email", post.email];

	query = mysql.format(query,table);

	connection.query(query,function(err,rows){
		if(err) {
			res.json({"status" : false, "Message" : "Error executing MySQL query"});
		}
		else {

			

			if(rows.length==1){
				var token = jwt.sign(rows[0], config.secret, {
					expiresIn: 86400
				});
				user=rows[0];
				user_id= rows[0].user_id;
				var data  = {
					user_id:rows[0].user_id,
					device_type:rows[0].device_type,
					access_token:token,
					device_token:rows[0].device_token,
					ip_address:post.ip_address
				}
				var query = "INSERT INTO  ?? SET  ?";
				var table = ["access_token"];
				query = mysql.format(query,table);
				connection.query(query, data, function(err,rows){
					if(err) {
						res.json({"status" : false, "Message" : "Error executing MySQL query"});
					} else {
						res.json({
							status: true,
							message: 'Token generated',
							token: token,
							currUser: user
						});
           				 } // return info including token
           				});
			}
			else {
				res.json({"status" : false, "Message" : "wrong email/password combination"});
			}

		}
	});
}

module.exports = userLoginCheck;

