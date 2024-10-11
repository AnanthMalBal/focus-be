var express = require('express');
var router = express.Router();
const con = require('../dbconfig');
var sprintf = require('sprintf-js').sprintf;
const moment = require('moment');
const Util = require('../routes/util');
const Queries = require('../routes/queries');
const Message=require('../routes/message');

//st operational_queue
router.get('/operationalqueue', function (req, res) {
    try {
      console.log("Welcome to operational_queue List");
      cmd = 'select queueId ,queueName from operational_queue where status=1 order by displayOrder';
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

//ed operational_queue

//st productsupport
router.get('/productsupport', function (req, res) {
    try {
      console.log("Welcome to productsupport List");
    //   var isCancle="Yes";
      cmd = 'select productId,productName from product_support where  status=1';
      console.log(cmd);
      con.query(cmd, function (err, result) {
        // console.log(result.length);
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
  });
  
  //end productsupport
  
router.post('/addticket',function(req,res){
try{
  console.log("Ticket Post Query ::: "+Queries.TicketPost);
  
  const customerId=req.body.customerId
  const cookId= req.body.cookId
  const productSupportId=req.body.productSupportId
  const supportType=req.body.supportType
  const ticketStatus=req.body.ticketStatus
  const description=req.body.description
  const queueId=req.body.queueId
  const assignedTo=req.body.assignedTo
  const employeeId=req.body.employeeId
console.log("Before Post");
const cDateTime= Util.getDate()
const ticketId="T"+ Date.now();
cmd=sprintf('insert into ticket(ticketId,parentTicketId,customerId,cookId,productSupportId,supportType,ticketStatus,description,queueId,assignedTo,createdBy,createdDate,modifiedBy,modifiedDate,status) values ("%s","%s","%s","%s","%s","%s","%s","%s","%s","%s","%s","%s","%s","%s",%b)',ticketId,ticketId, customerId,cookId,productSupportId,supportType,ticketStatus,description,queueId,assignedTo,employeeId,cDateTime,employeeId,cDateTime,1);
  con.query(cmd, function (err, results) 
  {
    console.log(cmd);
    if (err)
      //  === null && results[0] !== undefined)
      {
        Util.sendError401(res, Message.TICKET_POST_ERROR);

      }
      else
      {
        res.status(200).send("Done");
        console.log("Done");

      }
}
);
}
catch(excep){
    Util.sendError500(req, res, excep);
}
})


module.exports = router;

