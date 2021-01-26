<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="js/javascript.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<title>Hotel Reservation System</title>
        <style>
            .btnadrmtype{
                border: 1px solid black;
                background: none;
                outline: none;
                width: 100px;
                height: 30px;
                cursor: pointer;
            }
        </style>
</head>
<body>
<div id="externaldiv">
            <div id="header">
                <%@include file="/header.jsp" %>
            </div>
            <div id="center">
                <div style="background-color: white;margin-top: 30px;">
                    <div style="width: 70%;margin-left: 10%;padding: 40px">
                
                        <h1 style="text-align: left;display: inline-block;">All Available Rooms</h1>
                        <hr style="height: 3px;background-color: #f1cd8f;border: none;"> 
                        <br>
                        <form action="BookRoom" method="post" id="bookroom" onsubmit="return bookroomvalidate();">
                            <input type="hidden" value="" name="checkin"/>
                            <input type="hidden" value="" name="checkout"/>
                            <input type="hidden" value="" name="ses"/>
                            <table>
                            <c:forEach var="rooms" items="${listRooms}" varStatus="status">
                                <tr style="border-left: 1px solid black;">
                                    <td style="padding: 10px;padding-right: 70px;border-bottom: 1px solid;">
                                        <input type="hidden" value="${rooms.roomname}" name="roomname"/>
                                        <p> <b>${rooms.roomname }</b><br><hr> </p>
                                        <p>Room Type:${rooms.roomtype }</p>
                                        <p>Number of child:${rooms.numberofchild }</p>
                                        <p>Number of Adult:${rooms.numberofadult }</p>
                                        <p>Room Price:${rooms.roomprice }</p>
                                    </td>
                                    <td style="padding-left: 80px;border-left: 1px solid;border-bottom: 1px solid;">
                                        <button class="btnadrmtype" type="submit">Book Room</button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </table>
                        </form>
                        
                    </div>
                </div>
            </div>
            <div id="footer">
                
            </div>
        </div>
</body>
</html>