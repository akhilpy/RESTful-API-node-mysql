var mysql   = require("mysql");
var connection = require("../database");


var getVenues = function (req, res) {
	
    
		var query = 'SELECT * from venues' ;       

      connection.query(query, function(err,rows){
           		
           		if(err){
           			res.json({"status" : false, "Message" : "Error executing MySQL query"});
           		}

           		else{
                if(rows.length==0){
                  res.json({"status" : false, "Message" : "No venues"});
                }
                else{
                  var j =0;
                  for (var i in rows) {
                    val = rows[i].venue_id;

                  var query= 'SELECT  venue_amenities_id, amenitie FROM `venue_amenities` where venue_id ='+val+
                  ';SELECT concat( usr.first_name, " ", usr.last_name) as name, usr.image_path FROM `venues` as vc, user as usr WHERE vc.creator_id=usr.user_id AND vc.venue_id='+val+
                  ';SELECT vc.comment, vc.rating, concat( usr.first_name, " ", usr.last_name) as name, usr.image_path  FROM `venue_comment` as vc, user as usr where vc.user_id=usr.user_id AND vc.deleted_status=0 AND vc.venue_id='+val+
                  ';SELECT venue_image_id, image_path FROM `venue_image` where venue_id='+val;

                  // 'SELECT event_image_id, image_path, caption FROM event_images where event_id='+val+
                  // ';SELECT concat( usr.first_name, " ", usr.last_name) as name, usr.image_path, eve.status FROM `event_attendee` as eve, user as usr WHERE eve.user_id=usr.user_id AND eve.event_id='+val+
                  // ';SELECT concat( usr.first_name, " ", usr.last_name) as name, usr.image_path, cmnt.comment, cmnt.created_date, lk.liked_status FROM event_comment as cmnt, user as usr, event_like_dislike as lk WHERE cmnt.user_id=usr.user_id AND cmnt.user_id=lk.user_id AND cmnt.event_id='+val+
                  // ';SELECT  usr.first_name, usr.image_path FROM `events` as eve, user as usr WHERE eve.creator_id=usr.user_id AND eve.event_id='+val+
                  // ';SELECT description, start_time, end_time FROM `event_schedules` where event_id='+val;
                  
                  connection.query(query, function(err,result){
              
              if(err){
                res.json({"status" : false, "Message" : "Error executing MySQL query"});
              }
              else {
                rows[j].amenities=result[0];
                rows[j].creator_info=result[1];
                rows[j].comment=result[2];
                rows[j].images=result[3];
                
                j++;
                if(rows.length==j){
                res.json({"status" : true, "Message" : "Venues found  successfully", "details":rows});
              }
              }
                });
                  
                }
           			
                }
            }
           	}); 

}

module.exports=getVenues;