const requestIp = require('request-ip');
var express = require('express');
var router = express.Router();

const http = require("http");

// inside middleware handler

router.get('/getipaddress',function(req,res){
try
{
    console.log("Welcome to GetIP Address");
    // const ipMiddleware = function(req, res, next) {
        const clientIp = requestIp.getClientIp(req); 
        if(clientIp=="")
            {
                console.log("No Data")
                res.send("No IP Address")
            }
            else
            {
                console.log(`Your IP Address is ${clientIp}.`);
                
                console.log("IP",clientIp);
                // res.send(`Your IP Address is ${clientIp}.`)
                console.log("IP NEW", req.socket.localAddress);
                console.log(req.connection.remoteAddress);
                console.log("anan",req.headers.host);//this is correct code
                
                console.log("IP NEW1",clientIp);
                res.send("Your IP Addresss is: " + req.socket.localAddress+"\n Old IP "+clientIp);
                
                // res.send(clientIp);
                res.end();
            }
        // next();

    // };
}
catch (e) {
    console.log("Catch");
    const statusCode = e.statusCoderes || 500;
    res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

}
})



router.get('/getnewip',function(req,res){
    try{

        
           }
                  catch (e) {
    console.log("Catch");
    const statusCode = e.statusCoderes || 500;
    res.status(statusCode, "Error").json({ success: 0, message: e.message, status: statusCode });

}
})

module.exports = router;
