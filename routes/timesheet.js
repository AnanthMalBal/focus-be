var express = require('express');
var router = express.Router();
const con = require('../dbconfig');
var sprintf = require('sprintf-js').sprintf;
const moment = require('moment');

/* GET users listing. */
// router.get('/', function (req, res, next) {
//     res.send('respond with a resource');
// });


//st get os
router.get('/getOperationalStatus', function (req, res) {
    try {
        console.log("Welcome to OperationalStatus");
        cmd='select * from operational_status where status=1';
        // cmd='select from usersattendance where employeeId="'+req.query.employeeId+'" and date LIKE "' + '\%' + '' + req.query.date + '' + '\%' + '"' ;

        console.log(cmd);
        con.query(cmd,function(err,result){
        console.log("res",result);
            if(err){
                console.log(err);
                res.send("Date incorrect");
            }
            else

            res.send({result});
        })
    }
    catch (excep) {
        Util.sendError500(req, res, excep);
    }
});



//end get os


//get time 
//st get hour
router.get('/getmarkedtime', function (req, res) {
    try {
        console.log("Welcome to Get Marked Time");
        cmd='select attendanceId,employeeId,DATE_FORMAT(markedTime,\'%Y-%m-%d %H:%i:%s\') as markedTime ,symbol ,substring(symbol,2,2) as WorkingHours from usersattendance where employeeId="'+req.query.employeeId+'" and date LIKE "' + '\%' + '' + req.query.date + '' + '\%' + '"' ;
        // cmd='select from usersattendance where employeeId="'+req.query.employeeId+'" and date LIKE "' + '\%' + '' + req.query.date + '' + '\%' + '"' ;

        console.log(cmd);
        con.query(cmd,function(err,result){
        console.log("res",result);
            if(err){
                console.log(err);
                res.send("Date incorrect");
            }
            else
            // console.log(result[0].date);

            res.send({result});
        })
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });
    }
});
//end get hour
//st att po
router.post('/addusersattendance', function (req, res) {
    try {
        var cdt = moment(Date.now()).format('YYYY-MM-DD');
        console.log(cdt);
        // var cdatetime = Date.now().format('YYYY-MM-DD HH:mm:ss');




        // var cdatetime = new Date.now();
        // console.log("cdatetime",cdatetime);
        cmmd = 'select count(*) from usersattendance where employeeId="' + req.body.employeeId + '" and date LIKE"' + cdt + '"';
        // console.log(cmmd);
        
        con.query(cmmd, function (err, getresult) {
            console.log("length", getresult.length);
            if (getresult.length > 0) {
                console.log("Welcome to update ");
 
                var command = 'UPDATE usersattendance SET symbol="' + req.body.symbol + '" where employeeId=' + req.body.employeeId + ' and date LIKE"' + '\%' + '' + cdt + '' + '\%' + '"';
                console.log("command " + command)
                let data = [true, 1];
                con.query(command, data, function (error, result) {
                    console.log(result.affectedRows);
                    if (result.affectedRows >= 1) {
                        console.log("affectedRows",result.affectedRows);
                        console.log("Done");
                        res.status(200).send({ message: "Successfully Changed symbol" });
                    }
                   else {
                        console.log("Welcome to AddUsersAttendance");
                        var attdatetime = Date.now();
                        console.log(attdatetime);
                        var attid = "AT" + attdatetime;
                        var tsid = "TS" + attdatetime;
                        console.log(attid);
                        console.log(tsid);
                        let date_time = new Date();

                        // get current date
                        // adjust 0 before single digit date
                        let date = ("0" + date_time.getDate()).slice(-2);
                        
                        // get current month
                        let month = ("0" + (date_time.getMonth() + 1)).slice(-2);
                        
                        // get current year
                        let year = date_time.getFullYear();
                        
                        // get current hours
                        let hours = date_time.getHours();
                        
                        // get current minutes
                        let minutes = date_time.getMinutes();
                        
                        // get current seconds
                        let seconds = date_time.getSeconds();
                        
                        // prints date in YYYY-MM-DD format
                        console.log(year + "-" + month + "-" + date);
                        
                        // prints date & time in YYYY-MM-DD HH:MM:SS format
                        console.log(year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds);
                
                var ccdate=year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
                console.log(ccdate);
                console.log(date_time);

                        var command = sprintf('insert into usersattendance (attendanceId,employeeId,symbol,mode,date,markedTime) values ("%s","%s","%s","%s","%s","%s")', attid, req.body.employeeId, req.body.symbol, req.body.mode, ccdate,ccdate);
                        console.log(command);
                        con.query(command, function (err, atresult) {
                            if (err) {
                                res.status(401).send({ "message": err });
                                console.log(err);
                            }
                            else {
                        
                                var cmd = sprintf('insert into userstimesheet (timesheetId,attendanceId,markedTime) values ("%s","%s","%s")', tsid, attid, ccdate);

                                console.log(cmd);
                                con.query(cmd, function (err, tsresult) {
                                    if (err) {
                                        console.log("errpart 2 part");
                                        res.status(401).send({ "message": err });
                                        console.log(err);
                                    }
                                    else {
                                        console.log("Check");
                                        res.status(200).send({ message: "Successfully Added Attendance & TimeSheet" });
                                    }
                                })
                            }
                        })
                    }
                });
            }
        })
        }

    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }
});
//end att post


router.get('/getLmsList', function (req, res) {
    try {
        console.log("Welcome To LMS ");
        cmd = 'select * from getlmslist';
        console.log(cmd);
        con.query(cmd, function (err, result) {
            if (err) {
                res.send("Somethink Wrong");
            }
            else {

                res.send(result);
            }
        }
        )
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }
});

// router.get('/getLeaveBalance', function (req, res) {
//     try {
//         console.log("Welcome to approvedLeaveBalance");
//         command = 'CALL getLMSLeave(?)';
//         empid = req.body.empid;
//         con.query(command, [empid], function (err, result) {
//             if (err) {
//                 res.send("Something Wrong ");
//             }
//             else {
//                 console.log("r0",result[0][0]);
//                 // res.send({JSON.parse(result[0][0].approvedLeaveBalance));
//                 result[0][0]=JSON.parse(result[0][0].approvedLeaveBalance);
//                 // result[0][0].approvedLeaveBal = JSON.parse(result[0][0].approvedLeaveBalance);
//                 res.send(result);

//             }
//             // }
//         });


//     }
//     catch (e) {
//         console.log("Catch");
//         const statusCode = e.statusCoderes || 500;
//         res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

//     }

// })
router.get('/getLeaveBalance', function (req, res) {
    try {
        console.log("Welcome to approvedLeaveBalance");
        command = 'CALL getLMSLeave(?)';
        empid = req.query.empid;
        con.query(command, [empid], function (err, result) {
            if (err) {
                res.send("Something Wrong ");
            }
            else {
                // console.log("r0",result[0][0].approvedLeaveBalance);
                // res.send({JSON.parse(result[0][0].approvedLeaveBalance));
                result[0][0]=JSON.parse(result[0][0].approvedLeaveBalance);
                // result[0][0].approvedLeaveBalance=JSON.parse(result[0][0].approvedLeaveBalance);
                res.send(result);
            
            }
            // }
        });


    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }

})

//st get leave list
router.get('/getLeaveType', function (req, res) {
    try {
        console.log("Welcome to getLeaveType");
        command = 'select * from leave_type where status=1'
        con.query(command, function (err, result) {
            if (err) {
                res.send("Something Wrong ");
            }
            else {
                res.send(result);

            }
        });
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }

})
//end get leave list


router.get('/getHolidays', function (req, res) {
    try {

        console.log("Welcome to Get Holidays List");
        command = 'CALL getLMSNew(?,?)';
        fdate = req.query.cdate;
        eid = req.body.empid;
        console.log(command);
        con.query(command, [fdate, eid], function (err, result) {
            if (err) {
                res.send("Pls give correct Input Or Pls check Date");
            }
            else {

                res.send(result);
            }
        });

    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }
});


router.get('/getProjectList', function (req, res) {
    try {
        console.log("Welcome to Get Project Name")
        cmd = 'select projectId,projectName from operational_resource_project';
        console.log(cmd);
        con.query(cmd, function (err, result) {
            if (err) {
                res.send("Pls give correct Input Or Pls check Date");
            }
            else {

                res.send(result);
            }
        });
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }
});
//st del userslogdetail
router.delete('/deleteUserDailyLog',function(req,res){
    try{
        console.log("Welcom to  deleteUserDailyLog ");
        cmd='DELETE from usersdailylog where autoId="'+req.body.autoId+'"';;
        console.log(cmd);
        let data = [true, 1];
        con.query(cmd, data, function (error, result) {
            console.log(result.affectedRows);
            if (result.affectedRows >= 1) {
                console.log("affectedRows",result.affectedRows);
                console.log("Done");
                res.status(200).send({ message: "Successfully Delete Timesheet" });
            }
           else {
                console.log("Pls give correct Data");
                res.send("Pls give correct Data");
          }
        });
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }
})

//end del userslogdetail

//st getuserdailylog
router.post('/updateUserTimesheet', function (req, res) {
    try {
        console.log("Welcome to Update_UserTimesheet")
        // var command = 'UPDATE usersattendance SET symbol="' + req.body.symbol + '" where employeeId=' + req.body.employeeId + ' and date LIKE"' + '\%' + '' + cdt + '' + '\%' + '"';

        cmd = 'UPDATE userstimesheet SET hoursBillable="'+req.body.hoursBillable+'", hoursNBNP="'+req.body.hoursNBNP+'", hoursNBP="'+req.body.hoursNBP +'" where timesheetId="'+req.body.timesheetId+'"';
        console.log(cmd);
        let data = [true, 1];
        con.query(cmd, data, function (error, result) {
            console.log(result.affectedRows);
            if (result.affectedRows >= 1) {
                console.log("affectedRows",result.affectedRows);
                console.log("Done");
                res.status(200).send({ message: "Successfully update Timesheet" });
            }
           else {
                console.log("Pls give correct Data");
                res.send("Pls give correct Data");
          }
        });
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }
});


//end getuserdailylog


//st getuserdailylog
router.get('/getUsersDailyLog', function (req, res) {
    try {
        console.log("Welcome to getUsersDailyLog")
        cmd = 'select * from usersdailylog where timesheetId="'+req.query.timesheetId+'"';
        console.log(cmd);
        con.query(cmd, function (err, result) {
            if (err) {
                res.send("Pls give correct Input Or Pls check Date");
            }
            else {

                res.send(result);
            }
        });
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }
});

//st getBillabledetail
router.get('/getBillableDetail',function(req,res){
    try{
        console.log("Get Billable Hourse Detail");
        cmd='select billType from timesheetprocess where processId="'+req.query.processId+'"';
        console.log(cmd);
        con.query(cmd, function (err, result) {
            if (err) {
                res.send("Pls give correct Input Or Pls check Date");
            }
            else {

                res.send(result);
            }
        });
    }catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }

})


//end getBillabledetail


//end getuserdailylog
router.get('/getProcessList', function (req, res) {
    try {
        console.log("Welcome to Get processName")
        cmd = 'select processId,processName ,billType from timesheetprocess ';
        console.log(cmd);
        con.query(cmd, function (err, result) {
            if (err) {
                res.send("Pls give correct Input Or Pls check Date");
            }
            else {

                res.send(result);
            }
        });
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }
});



router.get('/getTimesheetId', function (req, res) {
    try {
        mdate = req.query.markedTime;
        console.log("Welcome to Get TimesheetId")
        cmd = 'select timesheetId from userstimesheet where markedTime LIKE "' + mdate + '%' + '"';
        console.log(cmd);
        con.query(cmd, function (err, result) {
            if (err) {
                res.send("Pls give correct Input Or Pls check Date");
            }
            else {

                res.send(result);
            }
        });
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

    }
});


module.exports = router;
