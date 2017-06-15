
var jwt = require('jsonwebtoken'); // used to create, sign, and verify tokens
var config = require('../config'); // get our config file

/**
 * This api is use to verify token for each request,
 * when client requests with a token this API decodes that match with existing token  and send with 
 * decoded object.
 * We set currUser i.e. current user to req object so we can access somewhere else.
 * 
 */
 
var verifyToken=function (req, res,next) {
	var token = req.body.token || req.query.token || req.headers['token'];
	 if (token) {
		
		jwt.verify(token, config.secret, function (err, currUser) {
			if (err) {
				
				res.json({"status" : false, "Message" : err});
			} else {
				
				req.currUser = currUser;
				next();
			}
		});
	}
	 else {
		
		res.json({"status" : false, "Message" : "Invalid Access"});
	
	}
};
module.exports=verifyToken;