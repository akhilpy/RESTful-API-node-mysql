var mysql   = require("mysql");
var connection = require("../database");


var getVenueDetails = function (req, res) {
	venue_id=req.params.venue_id

		var query = 'SELECT * FROM venues where venue_id='+venue_id+';SELECT amenitie FROM venue_amenities where venue_id='+venue_id+';SELECT image_path FROM venue_image where venue_id='+venue_id+
    ';SELECT vc.comment, vc.rating, concat( usr.first_name, " ", usr.last_name) as name, usr.image_path  FROM `venue_comment` as vc, user as usr where vc.user_id=usr.user_id AND vc.deleted_status=0 AND vc.venue_id='+venue_id;
			connection.query(query, function(err,rows){
           		
           		if(err){
           			res.json({"status" : false, "Message" : "Error executing MySQL query"});
           		}
           		else{
           			var data = {};
           			data.basicDetails=rows[0];
           			data.amenitie=rows[1];
           			data.images=rows[2];
                data.comment=rows[3];


           			res.json({"status" : true, "Message" : "venue details", "details":data});
           		}
           	}); 

}

module.exports=getVenueDetails;