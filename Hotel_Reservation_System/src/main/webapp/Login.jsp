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
            input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }
            input{
                width: 400px;
                height: 25px;
                margin: auto;
            }
            .button{
                border: none;
                outline: none;
                background: none;
                background-color: maroon;
                color: white;
                border: 1px solid black;
                border-radius: 30px;
                height: 35px;
                width: 70px;
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
            <div style="width: 40%;margin-left: 15%;padding: 40px">
                
                <h1 style="text-align: left;">Login</h1>
                
                <hr style="height: 3px;background-color: #f1cd8f;border: none;"> 
                <br>
                
                <form action="Userlogin" method="post" >
                    <label for="MobileNo">Enter Mobile Number:</label>
                    <br>
                    <input type="number" id="number" name="number" maxlength="10" oninput="javascript: if (this.value.length > 10) this.value = this.value.slice(0, 10);" required autocomplete="off" required/>
                    
                    <br><br>
                    <label for="MobileNo">Password:</label>
                    <br>
                    <input type="password" id="password" name="password" required/>
                    
                    <br><br>
                    <button class="button" type="submit" value="Submit">Login</button>
                </form>
                	${msg}
                    <br>
                    <label for="register" style="color: background;">Don't have an account?</label>
                    <br>
                    <button class="button" onclick="Register2()">Register</button>
                    
                
            </div>
        </div>
	</div>
    <div id="footer">
               
    </div>
</div>

</body>
</html>