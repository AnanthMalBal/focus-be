const multer = require('multer');
const path = require('path');
const con = require('../dbconfig');
const moment = require('moment');
const fs = require('fs');

var express = require('express');
var router = express.Router();
var sprintf = require('sprintf-js').sprintf;



const storage = multer.diskStorage({
    destination: 'C:/images/',
  
    filename: (req1, file, cb) => {
      // console.log("Request name ",req1.params.id);
      return cb(null, `${file.fieldname}_${Date.now()}${path.extname(file.originalname)}`)
      // return cb(null,`${file.fieldname}_`+req1.params.id+`${path.extname(file.originalname)}`)
    }
  })
  
  const createimage = async (req, res, next) => {
  
    var data = {
  
      mediaUrl: req.file.filename,
      
      // userImage:userImg.filename,
      // status:1
    }
    // console.log("Filename",req.file.filename);
    // insert into usersattendance (attendanceId,employeeId,symbol,mode,date,markedTime) values ("%s","%s","%s","%s","%s","%s")', attid, req.body.employeeId, req.body.symbol, req.body.mode, ccdate,ccdate);
    //                     console.log(command);
    var mediaTime = Date.now();
      console.log(mediaTime);
      var MTID = "MT" + mediaTime;
      var cdt = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');

    
  
    var cmd=sprintf('insert into tix_media (mediaID,mediaUrl,mediaType,createdBy,createdDate,status) values("%s","%s","%s","%s","%s",%b)',MTID, req.file.filename ,req.body.mediaType,req.body.createdBy ,cdt,1)
    console.log(cmd);
        let result = await con.query( cmd,function (err, rows) {
        if (err) {
        console.log(err);
        res.send({
          message: "errpr", err
        })
      }
      else {
        res.send({ message: "save img" })
      }
    })
  }
  // const { nextTick } = require('process');
  const upload = multer({
    storage: storage
  })
  router.post('/createmediaimage', upload.single('images'), createimage)
  
  //**** End  */

  
  router.get('/getimage', function (req, res) {
  try{
  var getresisterQ = 'SELECT mediaUrl FROM tix_media WHERE mediaId="' + req.query.mediaId+'"';
  console.log(getresisterQ);
  con.query(getresisterQ, function (error, result) {
    if (error) {
      console.log(error);
      res.send("Unable to get data");
    }
    else {
      console.log("userimage", result);
      const imagefile = fs.readFileSync('C:/images/' + result[0].mediaUrl);
      const bl = Buffer.from(imagefile, 'base64');

      res.send(bl);
      // res.send({ "FileName1": result[0].imageUrl, "file": bl });

    }
  });
}
catch (e) {
  console.log("Catch");
  const statusCode = e.statusCoderes || 500;
  res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });
}

});
//****End  */
// //end getid proof

  
  module.exports = router;
