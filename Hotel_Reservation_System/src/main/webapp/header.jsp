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
</head>
<body>
<div style="background-color: brown;">
            <h1 style="color: antiquewhite;">Hotel Reservation System</h1>
        </div>
        <div style="text-align: center;margin-top: 20px;background-color: white;">
            <button class="btnmenu" onclick="HomeMenu()">HOME</button>
            <button class="btnmenu" onclick="SearchRoomMenu()">SEARCH ROOM</button>
            <button class="btnmenu" onclick="ContactMenu()">CONTACT</button>
            <button class="btnmenu" onclick="AboutMenu()">ABOUT</button>
            <%
                String username= (String) session.getAttribute("session_user_name");                     
                if (username == null) {
            %>
            <button class="btnmenu" onclick="RegisterMenu()">REGISTER</button>
            <button class="btnmenu" onclick="LoginMenu()">LOGIN</button>
            <%
                }else{
            %>
            <form style="display: inline;" action="UserLogout" method="post">
                <button class="btnmenu" type="submit">Logout</button><br>
                <a class="welcomeuser" href="javascript:userreport();">Welcome,<%=username%></a>
            </form>
            <%
                }
            %>
        </div>
</body>
</html>