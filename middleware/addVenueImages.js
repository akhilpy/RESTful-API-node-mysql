var multer  = require('multer');
var bodyParser = require('body-parser');
var mysql   = require("mysql");
var connection = require("../database");
var upload = multer({ dest: './images/venueimages' });
var async = require("async");
var Storage = multer.diskStorage({

      destination: function (req, file, callback) {
                  callback(null, "./images/venueimages");
      },
      filename: function (req, file, callback) {

              callback(null, "venue_id_" +venue_id+"_"+ file.originalname);
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

var addVenueImages	= function (req, res) { 
   
   venue_id=req.params.venue_id;

    upload(req, res, function (err){ 
    	filenames= new Array();
    	for(i=0;i<req.files.length;i++){
    		filenames[i]= "venue_id_" +venue_id+"_"+req.files[i].originalname;
    		
    	}
    	console.log(filenames);
        if (err) {
            res.json({"Error" : true, "Message" : "File uploading failed!!"});
        } 
       
        else{
           
            async.map(filenames,function (image_name,callback) {

            	var data={
            		image_path:image_name,
            		venue_id:venue_id
            	}	
            	var query = "INSERT INTO  ?? SET  ?";
            	var table = ["venue_image"];
            	
            	query = mysql.format(query,table);
           
            	connection.query(query, data, function(err,rows){
            		callback(err);
            	});
            },function (err,result) {
            	if(err)
            		res.json({"status" : false, "Message" : "Error executing MySQL query"});
            	else
            		res.json({"status" : true, "Message" : "Images  added successfully"});
            }); 

        }

    }); 
}

module.exports = addVenueImages;
