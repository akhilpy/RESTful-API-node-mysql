var mysql   = require("mysql");
var connection = require("../database");
var async = require("async");


var updateAmenities = function(req, res) {
	var post={
		venue_id:req.params.venue_id,
		amenitie:req.body.amenitie
	};
	console.log(post);
  async.map(post.amenitie,function (amenitie,callback) {
    var data= {
        //venue_id:post.venue_id,
        amenitie:amenitie
    }
    console.log(data)
    var query = "UPDATE venue_amenities  SET ? where ?";
    var condition = {venue_id:post.venue_id};

    //query = mysql.format(query,table);

    connection.query(query, [data,condition], function(err,rows){
        callback(err);
    });
},function (err,result) {
    if(err)
        res.json({"status" : false, "Message" : "Error executing MySQL query"});
    else
        res.json({"status" : true, "Message" : "Amenitie  update successfully"});
}); 
	
	
} 
module.exports= updateAmenities;