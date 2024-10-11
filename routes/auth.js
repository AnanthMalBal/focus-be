var express = require('express');
var router = express.Router();
const con = require('../dbconfig');
const moment = require('moment');
const jsonwebtoken = require('jsonwebtoken');
const { sprintf } = require('sprintf-js');
const bcrypt = require('bcryptjs');



const authcheck = (req, res, next) => {
    headers = {

        'Content-Type': 'application/json',
        "Access-Control-Allow-Origin": ' <origin>',
        "Access-Control-Allow-Credentials": true
    };
    // console.log(headers);
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(" ")[1];
    // console.log(token);
    if (!token) return res.sendStatus(401);
    jsonwebtoken.verify(token, process.env.ACCESS_TOKEN, (err, obj) => {

        if (err) {
            console.log("error", err);
            return res.sendStatus(403);
        }
        req.username = obj.username;
        req.password = obj.password;
        next();

    })
}

//end 

//st auth
router.post('/auth', async function (request, response) {
    try {
        console.log("Welcome to Auth")
        // Capture the input fields
        let empId = request.body.username;
        let password = request.body.password;
        if (empId && password) {
            cmd = 'SELECT *FROM users  WHERE employeeId ="' + empId + '"';

            con.query(cmd, function (error, results) {
                console.log("cmd",cmd);
                console.log("result[0]",results[0]);
                const accesstoken = jsonwebtoken.sign({ empId, password }, process.env.ACCESS_TOKEN);
                // console.log("token", accesstoken);
                var type = '';
                if (results[0].userType == "Employee") {
                    type = "Employee"
                    var cdatetime = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
                    console.log("cdate",cdatetime);
                    var userdetail = sprintf('insert into userslog (employeeId,userLoginTime,fetchBlock) VALUES (%d,"%s",%b)', results[0].employeeId, cdatetime, 1);
                    console.log(userdetail);
                    con.query(userdetail, function (res, res) {
                        response.status(200).send({
                            accesstoken: accesstoken, Empid: results[0].employeeId, message: "Employee Login Sucessfully"
                        });
                        response.end();
                    })
                }
                else {
                    response.status(401).send({ message: "Invalid credentials,please check your username and password" });
                }
            })
        }
    }
    catch (e) {
        console.log("Catch");
        const statusCode = e.statusCoderes || 500;
        response.status(statusCode, "Error").json({ success: 0, message: "Invalid credentials check username and password pls ", status: statusCode });
    }
})


module.exports = router;