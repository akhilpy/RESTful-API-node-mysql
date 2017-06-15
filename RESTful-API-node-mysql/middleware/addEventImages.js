var multer  = require('multer');
var bodyParser = require('body-parser');
var mysql   = require("mysql");
var connection = require("../database");
var upload = multer({ dest: './images/eventimages' });
var async = require("async");
var Storage = multer.diskStorage({

      destination: function (req, file, callback) {
                  callback(null, "./images/eventimages");
      },
      filename: function (req, file, callback) {

              callback(null,  "event_id_" +event_id+"_"+ file.originalname);
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

var upload = multer({ storage: Storage, fileFilter:fileFilter }).any();

//array('venuePhotos', 5);

var addEventImages	= function (req, res) { 
   
   event_id=req.params.event_id;

    upload(req, res, function (err){ 
    	filenames= new Array();
      caption= new Array();
    	for(i=0;i<req.files.length;i++){
    		filenames[i]="event_id_" +event_id+"_"+req.files[i].originalname;
        caption[i]=req.body.caption[i];

    		
    	}
    	console.log(caption);
        if (err) {
            res.json({"Error" : true, "Message" : "File uploading failed!!"});
        } 
       
        else{
            count=0;
            async.map(filenames,  function (image_name, callback) {
            	var data={
            		image_path:image_name,
            		event_id:event_id,
                caption:caption[count]
            	}
              count++;
              
            	var query = "INSERT INTO  ?? SET  ?";
            	var table = ["event_images"];
            	
            	query = mysql.format(query,table);
           
            	connection.query(query, data, function(err,rows){
            		callback(err);
            	});
            },function (err,result) {
            	if(err)
            		res.json({"status" : false, "Message" : "Error executing MySQL query"});
            	else
            		res.json({"status" : true, "Message" : " Event Images  added successfully"});
            }); 

        }

    }); 
}




module.exports = addEventImages;
