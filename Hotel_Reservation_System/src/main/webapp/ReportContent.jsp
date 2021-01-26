<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/Css.css" rel="stylesheet" type="text/css"/>
        <script src="js/javascript.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <title>Admin-Hotel Reservation System</title>
</head>
<body>
		<table>
            <tr>
                <th>User</th>
                <th>Room Name</th>
                <th>Check-In</th>
                <th>Check-Out</th>
            </tr>
            <c:forEach var="report" items="${Report}" varStatus="status">
            <tr>
                <td>${report.username }</td>
                <td>${report.roomname }</td>
                <td>${report.checkindate }</td>
                <td>${report.checkoutdate }</td>
            </tr>
            </c:forEach>
        </table>
        
</body>
</html>