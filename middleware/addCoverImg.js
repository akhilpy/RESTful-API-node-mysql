
var multer  = require('multer');
var bodyParser = require('body-parser');
var mysql   = require("mysql");
var connection = require("../database");
var upload = multer({ dest: './images/coverimages' });

  var Storage = multer.diskStorage({

      destination: function (req, file, callback) {
                  callback(null, "./images/coverimages");
      },
      filename: function (req, file, callback) {

         filename=  "cover_Img_event_id_"+event_id+"_"+ file.originalname;

              callback(null, "cover_Img_event_id_"+event_id+"_"+ file.originalname);
    }
  });


var fileFilter =function (req, file, callback) {

      if(!file.originalname.match(/\.(jpg|jpeg|png|gif)$/)) {

            callback(new Error('Only image files are allowed!'));
      }
      else{
            callback(null, true);
      }
};

var upload = multer({ storage: Storage, fileFilter:fileFilter }).single("cover_image");



var addCoverImage = function (req, res) { 
  event_id=req.params.event_id
   
    upload(req, res, function (err)
     { 

        if (err) {
            res.json({"status" : false, "Message" : "File uploading failed!!"});
        } 
       
        else{
            var post= {
              cover_image:filename
            }

          var query = "UPDATE events SET ? WHERE ?";

          var condition = {event_id:event_id};

          connection.query(query, [post, condition], function(err,rows){
            if(err) {
              res.json({"status" : false, "Message" : "Error executing MySQL query"});
            }
            else {
              res.json({"status" : true, "Message" : "cover images added successfully!!" , "event_id":event_id});

            } 
          });
        }

      }); 
}

module.exports = addCoverImage;
