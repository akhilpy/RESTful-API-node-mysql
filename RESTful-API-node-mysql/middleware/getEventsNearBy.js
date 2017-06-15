var mysql   = require("mysql");
var connection = require("../database");


var getEventsNearBy = function (req, res) {
  event_id=req.params.event_id
  user_id = req.currUser.user_id
  lat = req.body.lat;
  lng = req.body.lng;
   
    var query = 'SELECT eve.*, ( 3959 * acos( cos( radians('+lat+') ) * cos( radians( eve.latitude ) ) * cos( radians( eve.longitude ) - radians('+lng+') ) + sin( radians('+lat+') ) * sin( radians( eve.latitude ) ) ) ) as distance, v.title as venue, (select count(liked_status) from event_like_dislike where event_id=eve.event_id and liked_status=0 ) as dislikes , (select count(liked_status) from event_like_dislike where event_id=eve.event_id and liked_status=1 ) as likes  FROM `events` as eve, venues as v, user as usr where v.venue_id=eve.venue_id AND eve.creator_id=usr.user_id ORDER BY distance ASC';
    

      connection.query(query, function(err,rows){
              
              if(err){
                res.json({"status" : false, "Message" : "Error executing MySQL query"});
              }
              else{                                                         
                if(rows.length==0) { res.json({"status" : false, "Message" : "NO result found"});}
                 
                else{
                   var j =0;
                for (var i in rows) {
                  val = rows[i].event_id;

                  var query= 'SELECT event_image_id, image_path, caption FROM event_images where event_id='+val+
                  ';SELECT concat( usr.first_name, " ", usr.last_name) as name, usr.image_path, eve.status FROM `event_attendee` as eve, user as usr WHERE eve.user_id=usr.user_id AND eve.event_id='+val+
                  ';SELECT concat( usr.first_name, " ", usr.last_name) as name, usr.image_path, cmnt.comment, cmnt.created_date, lk.liked_status FROM event_comment as cmnt, user as usr, event_like_dislike as lk WHERE cmnt.user_id=usr.user_id AND cmnt.user_id=lk.user_id AND cmnt.event_id='+val+
                  ';SELECT  usr.first_name, usr.image_path FROM `events` as eve, user as usr WHERE eve.creator_id=usr.user_id AND eve.event_id='+val+
                  ';SELECT description, start_time, end_time FROM `event_schedules` where event_id='+val;
                  
                  connection.query(query, function(err,result){
              
              if(err && rows.length==j){
                res.json({"status" : false, "Message" : "Error executing MySQL query"});
              j++;
              }
              else {
                rows[j].images=result[0];
                rows[j].creator_info=result[3];
                rows[j].attendee=result[1];
                rows[j].comment=result[2];
                rows[j].schedules=result[4];
                
                j++;
                if(rows.length==j){
                res.json({"status" : true, "Message" : "events found  successfully", "details":rows});
              }
              }
                });
                  }
                }
              
            }
            }); 

}

module.exports=getEventsNearBy;