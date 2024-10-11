var express = require('express');
var router = express.Router();
const con = require('../dbconfig');
var sprintf = require('sprintf-js').sprintf;
const moment = require('moment');

/* GET users listing. */
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});
//st user cancel

router.post('/userleavecancel', function (req, res) {
  try {
    console.log("Welcome to userleavecancel");
    cmdd = 'update usersleavemanagement SET status="Cancel" where leaveId="' + req.body.leaveId + '"';
 console.log(cmdd);
    con.query(cmdd, function (err, result) {
      if (err) {
        res.status(401).send({ "message": err });
        console.log(err);

      }
      else {
        res.status(200).send({ message: "Successfully update cancel in leave id" });
        
      }
    });

  }
  catch (e) {
    console.log("Catch");
    const statusCode = e.statusCoderes || 500;
    res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });
  }
});

//end user cancel

//st get usercancle list
router.get('/userleavelist', function (req, res) {
  try {
    console.log("Welcome to userleavecancellist");
    var isCancle="Yes";
    cmd = 'select *,IF(status="Pending",1,0) as cancelbutton from usersleavemanagement where employeeId='+req.query.employeeId+'';
    console.log(cmd);
    con.query(cmd, function (err, result) {
      console.log("length", result.length);
      if (result.length >= 1) {
        res.status(200).send({ message: "List", result });
      }
      else {
        res.status(200).send({ message: "No Cancle List" });
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


router.get('/getusers', function (req, res) {
  try {
    console.log("Welcome to Users");
      cmd = 'select userId,userName,groupId,teamId from users where  status=1';
      console.log(cmd);
      con.query(cmd, function (err, result) {

        if (err) {
            res.status(401).send({ "message": err });
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

  
})

router.post('/addusersdailylog', function (req, res) {
  try {
    console.log("Welcome to UsersDailyLog");
    // res.send("Welcome Test");
    // pid='select projectId from operational_resource_project';
    //  console.log(pid);
    //   var pid='SELECT * FROM operational_resource_project WHERE projectName="'+req.body.projectName+'"';
    //  console.log("focus",pid);
    //  let a='';
    //  con.query(pid,function(err,pidresult){
    //   if(err){
    //     res.status(401).send({ "message": err });
    //     console.log(err);

    //   }

    //   else{
    //     a=pidresult[0].projectId;
    // //  res.send(a);
    // console.log("0",pidresult,"a",a);

    // //  console.log("pid",res.send(pidresult[0])); 

    //  console.log(pidresult[0]);
    // console.log(r);
    // let r=req.body.projectName
    // console.log(r);
    // let t="SELECT projectId FROM operational_resource_project WHERE projectName='"+req.body.projectName+"'";
    // console.log("select pid",t);
    // +(('SELECT projectId FROM operational_resource_project WHERE projectName="')+r+'"')
    var command = sprintf('insert into usersdailylog (projectId,processId,timesheetId,billType,actualTime,status,description) values ("%s","%s","%s","%s",%d,"%s","%s")', req.body.projectId, req.body.processId, req.body.timesheetId, req.body.billType,req.body.actualTime, "pending", req.body.description);
    console.log(command);
    con.query(command, function (err, result) {
      if (err) {
        res.status(401).send({ "message": err });
        console.log(err);
      }
      else {
        res.status(200).send({ message: "Successfully Register" });
        res.end();
        console.log(result);
      }
    });
  }
  // }
  // )
  //   }
  catch (e) {
    console.log("Catch");
    const statusCode = e.statusCoderes || 500;
    res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

  }

})


//st post userleavedetail

router.post('/addusersleave', function (req, res) {
  try {
    console.log("Welcome to UsersLeaveManagement");


    var cdate = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
    console.log("cdate", cdate);
    var ddate = Date.now();
    console.log(ddate);
    var lmsid = "LMS" + ddate;
    console.log(lmsid);

    console.log("Welcome to UsersLeaveManagement");
    var command = sprintf('insert into usersleavemanagement (leaveId,employeeId,noOfDays,symbol,fromDate,toDate,reason,status,createdBy,createdDate,modifiedBy,modifiedDate) values ("%s","%s",%f,"%s","%s","%s","%s","%s","%s","%s","%s","%s")', lmsid, req.body.employeeId, req.body.noOfDays, req.body.symbol, req.body.fromDate, req.body.toDate, req.body.reason, "Pending", req.body.employeeId, cdate, req.body.employeeId, cdate);
    console.log(command);
    con.query(command, function (err, result) {
      if (err) {
        res.status(401).send({ "message": err });
        console.log(err);
      }
      else {
        res.status(200).send({ message: "Successfully Add UsersLMS" });
        res.end();
        // console.log(result);
      }
    });
  }
  // }
  // )
  //   }
  catch (e) {
    console.log("Catch");
    const statusCode = e.statusCoderes || 500;
    res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

  }

})


//end post userleavedetail

module.exports = router;
