<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
                width: 100%;
                height: 25px;
                margin: auto;
            }
            #button{
                border: none;
                outline: none;
                background: none;
                background-color: maroon;
                color: white;
                border: 1px solid black;
                border-radius: 30px;
                height: 35px;
                width: 100px;
                cursor: pointer;
            }
        </style>
</head>
<body>
<div style="background-color: white;margin-top: 30px;width: 100%;display: inline-flex;min-height: 350px;">
            <div style="width: 40%;margin-left: 5%;padding: 40px;">
                
                <form action="AllAvailableRooms" method="post" onsubmit="return SearchRooms();">
                    <h1 style="text-align: left;">Search Rooms</h1>
            
                    <hr style="height: 3px;background-color: #f1cd8f;border: none;"> 
                    <br>
                    
                    <label for="Check-in">Check-in Date:</label>
                    <br>
                    <input type="date" id="Checkin" name="checkin"/>
            
                    <br><br>
                    <label for="Check-out">Check-out Date:</label>
                    <br>
                    <input type="date" id="Checkout" name="checkout"/>
                    
                    <br><br>
                    <button id="button" type="submit">Search Room</button>
                </form>
            </div>
            <div style="margin: auto;">
                <img src="images/booking2.jpg" alt=""/>
            </div>
        </div>
</body>
</html>