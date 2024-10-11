var express = require('express');
var router = express.Router();
const con = require('../dbconfig');
var sprintf = require('sprintf-js').sprintf;
const moment = require('moment');

//st getphno
router.get('/customerphnolist', function (req, res) {
    try {
      console.log("Welcome to Customer Phone No List");
    //   var isCancle="Yes";
      cmd = 'select mobileNumber ,customerId,customerName from customer where status=1';
      console.log(cmd);
      con.query(cmd, function (err, result) {

        if (err) {
            res.status(401).send({ "message": err });
            console.log(err);
             }
        else {
         
            res.status(200).send({ message: "List", result });
                    console.log(result);

        }
      });
    }
    catch (e) {
      console.log("Catch");
      const statusCode = e.statusCoderes || 500;
      res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });
    }
  });

//ed getphno

//st get usercancle list
router.get('/customerlist', function (req, res) {
    try {
      console.log("Welcome to Customer List");
    //   var isCancle="Yes";
      cmd = 'select customerId,customerName,phoneNumber from customer where phoneNumber LIKE"'+'%'+req.query.SearchText+ '%' +'" OR customerName LIKE"'+'%'+req.query.SearchText+ '%'+'" and status=1';
      console.log(cmd);
      con.query(cmd, function (err, result) {
        console.log(result.length);
        if (result.length<=0) {
            res.status(200).send({ "message": "No Data" });
            console.log(err);
             }
        else {
         
            res.status(200).send({ message: "List", result });
                    console.log({result});

        }
      });
    }
    catch (e) {
      console.log("Catch");
      const statusCode = e.statusCoderes || 500;
      res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });
    }
  });
  
  //end usercancle list
  



module.exports = router;

