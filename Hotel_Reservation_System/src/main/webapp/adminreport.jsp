<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="Css/Css.css" rel="stylesheet" type="text/css"/>
        <script src="js/Javascript.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <title>Admin-Hotel Reservation System</title>
        <style>
            input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }
            .btnsearch{
                background: none;
                border: 1px solid black;
                outline: none;
                height: 30px;
                width: 90px;
                margin-left: 60px;
            }
            .searchinput{
                width: 200px;
                height: 25px;
                margin: auto;
            }
            .report-content{
                height: 390px;
                overflow: auto;
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
                    <div style="width: 70%;margin-left: 15%;padding: 40px;">
                    
                        <p style="margin-left: 50px;display: inline;">Check-In:</p>
                        <input class="searchinput" type="date" id="checkin" name="checkin"/>
                        <p style="margin-left: 50px;display: inline;" >Check-Out:</p>
                        <input class="searchinput" type="date" id="checkout" name="checkout"/>
                        <button class="btnsearch" onclick="reportsearch();">Search</button>
                    
                        <hr style="margin-top: 10px;">
                        
                        <div id="report-content" >
                            
                        </div>
                    </div>
                </div>
            </div>
            <div id="footer">
                
            </div>  
        </div>
</body>
</html>