
var multer  = require('multer');
var bodyParser = require('body-parser');
var mysql   = require("mysql");
var connection = require("../database");
var upload = multer({ dest: './images' });

  var Storage = multer.diskStorage({

      destination: function (req, file, callback) {
                  callback(null, "./images");
      },
      filename: function (req, file, callback) {

         filename=  "profile_pic_" + file.originalname;

              callback(null, "profile_pic_" + file.originalname);
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

var upload = multer({ storage: Storage, fileFilter:fileFilter }).single("userPic");



var UploadPic	= function (req, res) { 
   
    upload(req, res, function (err)
     { 

        if (err) {
            res.json({"status" : false, "Message" : "File uploading failed!!"});
        } 
       
        else{
            var post= {
              image_path:filename
            }

          var query = "UPDATE user SET ? WHERE ?";

          var condition = {user_id:req.currUser.user_id};

          connection.query(query, [post, condition], function(err,rows){
            if(err) {
              res.json({"status" : false, "Message" : "Error executing MySQL query"});
            }
            else {
              res.json({"status" : true, "Message" : "File uploading successfully!!" , "user_id":req.currUser.userid});

            } 
          });
        }

      }); 
}




module.exports = UploadPic;
