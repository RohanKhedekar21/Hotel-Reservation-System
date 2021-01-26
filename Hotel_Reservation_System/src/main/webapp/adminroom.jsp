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
        <style>
            .btnadrmtype{
                border: 1px solid black;
                background: none;
                outline: none;
                width: 74px;
                height: 27px;
                cursor: pointer;
            }
            .counterCell:before {              
                content: counter(tableCount); 
                counter-increment: tableCount; 
            }
            .roomtable{
                max-height: 350px;
                overflow: auto;
            }
            
        </style>
</head>
<body>
        <div style="background-color: white;margin-top: 30px;">
            <div style="width: 70%;margin-left: 15%;padding: 40px">
                
                <h1 style="text-align: left;display: inline-block;">List Rooms</h1>
                <hr style="height: 3px;background-color: #f1cd8f;border: none;"> 
                <br>
                
                <form action="DeleteRoom" method="post">
                    <div class="roomtable">
                        <table >
                            <tr>
                                <th>No.</th>
                                <th></th>
                                <th>Room Name</th>
                                <th>Room Type</th>
                                <th>Number of Adult</th>
                                <th>Number of Child</th>
                                <th>Price</th>
                                <th>Capacity</th>
                            </tr>
                            <c:forEach var="rooms" items="${listRooms}" varStatus="status">
                            <tr>
                                <td class="counterCell"></td>
                                <td><input type="checkbox" name="roomid" value="${rooms.roomid}"/></td>
                                <td>${rooms.roomname }</td>
                                <td>${rooms.roomtype }</td>
                                <td>${rooms.numberofadult }</td>
                                <td>${rooms.numberofchild }</td>
                                <td>${rooms.roomprice }</td>
                                <td>${rooms.roomcapacity }</td>
                            </tr>
                            </c:forEach>
                        </table>
                        <br><br>
                    </div>
                    <button class='btnadrmtype' type="button" onclick="newroom()">New</button>
                    <button class='btnadrmtype' type="submit">Delete</button>
                </form>
            </div>
        </div>
</body>
</html>