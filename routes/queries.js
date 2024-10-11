module.exports = {

    LoginAuthenticate : `SELECT U.userPwd, U.employeeId FROM users U JOIN usersmedia UM ON U.employeeId = UM.employeeId WHERE U.status = 1 AND (U.employeeId = ? OR UM.emailId = ? OR UM.mobileNo = ?)`,

    GetUserLeaveList:'select *,IF(status="Pending",1,0) as cancelbutton from usersleavemanagement where employeeId=?',

    // OLDTicketPost:`insert into ticket t(customerId,cookId,productSupportId,supportType,ticketStatus,description,queueId,assignedTo,status) values ("%s","%s","%s","%s","%s","%s","%s","%s","%s")', u.customerId=?,u.cookId=?,u.productSupportId=?,u.supportType=?,u.ticketStatus=?,u.description=?,u.queueId=?,u.assignedTo=?,u.status="1")`,
    // TicketPost:`insert into ticket t(customerId,cookId,productSupportId,supportType,ticketStatus,description,queueId,assignedTo,status), u.customerId=?,u.cookId=?,u.productSupportId=?,u.supportType=?,u.ticketStatus=?,u.description=?,u.queueId=?,u.assignedTo=?,u.status="1")`

}