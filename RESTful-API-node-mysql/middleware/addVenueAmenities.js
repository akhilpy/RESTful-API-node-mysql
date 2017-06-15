var mysql   = require("mysql");
var connection = require("../database");
var async = require("async");


var addVenueAmenities = function(req, res) {
	var post={
		venue_id:req.params.venue_id,
		amenitie:req.body.amenitie
	};
	console.log(post);
  async.map(post.amenitie,function (amenitie,callback) {
    var data= {
        venue_id:post.venue_id,
        amenitie:amenitie
    }

    var query = "INSERT INTO  ?? SET  ?";
    var table = ["venue_amenities"];
    query = mysql.format(query,table);
    connection.query(query, data, function(err,rows){
        callback(err);
    });
},function (err,result) {
    if(err)
        res.json({"status" : false, "Message" : "Error executing MySQL query"});
    else
        res.json({"status" : true, "Message" : "Amenitie  added successfully"});
}); 
	
	
} 
module.exports= addVenueAmenities;