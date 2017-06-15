var express = require("express");
var http = require('http');
var mysql   = require("mysql");
var multer  = require('multer');
var fileUpload = require('express-fileupload');
var bodyParser  = require("body-parser");
var md5 = require('MD5');
var path = require('path');
//var connection = require("./database");


setInterval(function() {
    var query = "UPDATE otp_registration SET block_status=0";

	connection.query(query,  function(err,rows){
		if(err) {
			//res.json({"status" : false, "Message" : "Error executing MySQL query"});
			console.log(err);
		}
		else {
			console.log("user unblocked");
		}
	});
}, 86400000);




// config files
var config = require('./config');
var config = require('./database');  

// all middleware added here 
var sendOTP = require('./middleware/sendOTP');
var verifyOTP = require('./middleware/verifyOTP');
var verifyToken = require('./middleware/verifyToken');
var addNewUser = require('./middleware/addNewUser');
var userLoginCheck = require('./middleware/userLoginCheck');
var updateProfile = require('./middleware/updateProfile');
var welcome = require('./middleware/welcome');
var uploadPic = require('./middleware/uploadPic');
var createVenue = require('./middleware/createVenue');
var addVenueAmenities = require('./middleware/addVenueAmenities');
var addVenueImages = require('./middleware/addVenueImages');
var getVenueDetails = require('./middleware/getVenueDetails');
var updateVenue = require('./middleware/updateVenue');
var updateAmenities = require('./middleware/updateAmenities');
var createEvent = require('./middleware/createEvent');
var addEventImages = require('./middleware/addEventImages');
var getEventDetails = require('./middleware/getEventDetails');
var getEvents = require('./middleware/getEvents');
var getEventsNearBy = require('./middleware/getEventsNearBy');
var deleteEventImage = require('./middleware/deleteEventImage');
var updateEvent = require('./middleware/updateEvent');
var addEventComment= require('./middleware/addEventComment');
var updateEventComment = require('./middleware/updateEventComment');
var addCoverImg = require('./middleware/addCoverImg');
var addThumbImg = require('./middleware/addThumbImg');
var addVenueComment = require('./middleware/addVenueComment')
var updateVenueComment = require('./middleware/updateVenueComment')
var likeDislike =require("./middleware/likeDislike");
var deleteEventComment = require("./middleware/deleteEventComment");
var deleteVenueComment = require("./middleware/deleteVenueComment");
var getVenues = require("./middleware/getVenues");


var port = process.env.PORT || 4200;

var app  = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());


//app.use(express.static(__dirname + '/images'));
//running server port
app.listen(port, function() {
    console.log('Express server listening on port ' +port);
});
// app.get('/',function(req, res) {
//     res.sendFile(path.join(__dirname + '/index.html'));
// })

app.get('/', function(req,res){
	res.send("welcome");
});
app.post('/sendOTP', sendOTP);
app.post('/verifyOTP', verifyOTP);
app.post('/signup', addNewUser);
app.post('/userlogin', userLoginCheck);


var apiRoutes = express.Router();
apiRoutes.use(bodyParser.urlencoded({ extended: true }));
apiRoutes.use(bodyParser.json());

//route middleware to verify a token 

apiRoutes.use(verifyToken);
apiRoutes.get('/', welcome);
apiRoutes.put('/updateProfile/', updateProfile);
apiRoutes.put('/uploadPic', uploadPic);
apiRoutes.post('/createVenue', createVenue);
apiRoutes.post('/addVenueAmenities/:venue_id', addVenueAmenities);
apiRoutes.post('/addVenueImages/:venue_id', addVenueImages);
apiRoutes.get('/getVenueDetails/:venue_id', getVenueDetails);
apiRoutes.put('/updateVenue/:venue_id', updateVenue);
apiRoutes.put('/updateAmenities/:venue_id', updateAmenities);
apiRoutes.post('/createEvent', createEvent);
apiRoutes.post('/addEventImages/:event_id', addEventImages);
apiRoutes.delete('/deleteEventImage/:image_name', deleteEventImage);
apiRoutes.put('/updateEvent/:event_id', updateEvent);
apiRoutes.post('/addEventComment/:event_id', addEventComment);
apiRoutes.post('/updateEventComment/:event_comment_id', updateEventComment);
apiRoutes.post('/deleteEventComment/:event_comment_id', deleteEventComment);
apiRoutes.get('/getEventDetails/:event_id', getEventDetails);
apiRoutes.post('/addCoverImg/:event_id',addCoverImg);
apiRoutes.post('/addthumbImg/:event_id',addThumbImg);
apiRoutes.get('/getEvents/', getEvents);
apiRoutes.post('/getEventsNearBy/', getEventsNearBy)
apiRoutes.post('/addVenueComment/:venue_id', addVenueComment);
apiRoutes.post('/updateVenueComment/:venue_comment_id', updateVenueComment);
apiRoutes.post('/deleteVenueComment/:venue_comment_id', deleteVenueComment);
apiRoutes.get('/getVenues',getVenues)
apiRoutes.post('/likeDislike/:event_id', likeDislike);

apiRoutes.get('/userImage/:file_name',function (req, res) {

    res.sendFile(__dirname +"/images/userimages/"+ req.params.file_name);
});
apiRoutes.get('/coverImage/:file_name',function (req, res) {

    res.sendFile(__dirname +"/images/coverimages/"+ req.params.file_name);
});
apiRoutes.get('/eventImage/:file_name',function (req, res) {

    res.sendFile(__dirname +"/images/eventimages/"+ req.params.file_name);
});
apiRoutes.get('/venueImage/:file_name',function (req, res) {

    res.sendFile(__dirname +"/images/venueimages/"+ req.params.file_name);
});

app.use('/api', apiRoutes);
