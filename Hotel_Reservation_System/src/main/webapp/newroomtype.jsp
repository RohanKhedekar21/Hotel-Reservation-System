<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/Css.css" rel="stylesheet" type="text/css"/>
        <script src="js/javascript.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <title>Hotel Reservation System</title>
        <style>
            .btnadd{
                border: none;
                outline: none;
                background: none;
                background-color: maroon;
                color: white;
                border: 1px solid black;
                border-radius: 30px;
                height: 28px;
                width: 62px;
                cursor: pointer;
            }
        </style>
</head>
<body>
<div id="externaldiv">
            <div id="header">
                <%@include file="/AdminHeader.jsp" %>
            </div>
            <div id="center">
                <div style="background-color: white;margin-top: 30px;">
                    <div style="width: 70%;margin-left: 15%;padding: 40px">
                
                        <h1 style="text-align: left;display: inline-block;">Adding New Room Type</h1>
                        <hr style="height: 3px;background-color: #f1cd8f;border: none;"> 
                        <br><br>
                        
                        <form action="NewRoomType" method="post">
                            
                            <label for="Roomtype">Enter Room type:</label>
                            <input type="text" id="roomtype" name="roomtype"  required/>
                            <br><br>
                            <button class="btnadd" type="submit">Add</button>
                            
                        </form>
                        
                    </div>
                </div>
            </div>
            <div id="footer">
                
            </div>
        </div>
</body>
</html>