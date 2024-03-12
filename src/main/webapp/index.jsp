<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Instagram Application</title>
  <style>
     body
     {
         text-align: center;
         margin-top: 200px;
         background-image: url("https://wallpapers.com/images/featured/instagram-background-u31qltpttuebqgzn.jpg");
         background-repeat: no-repeat;
         background-size: cover;
         font-style: italic;
         font-size: 30px;
         color: white;
        
     }
     .one
     {
         border-radius: 20px; /* Adjust the value to control the amount of curve */
        padding: 10px 20px;
        background-color: #3498db; /* Change color as needed */
        color: white;
        border: none;
        cursor: pointer;
        font-size: 20px;
     }
     .two
     {
         border-radius: 20px;
         padding: 10px 20px;
         background-color: #3498db;
         color: white;
         border: none;
         cursor: pointer;
         font-size: 20px
     }
     .three
     {
     border-radius: 20px;
     padding: 10px 20px;
     background-color: #3498db;
         color: white;
         border: none;
         cursor: pointer;
         font-size: 20px
     
     }
  </style>
</head>
<body>
${msg }
    <h1 style= text-shadow: 2px 2px 4px rgb(0,0,0,0,5)> Welcome to Instagram</h1>
          
        <a href="login.jsp"> <button class="one"> Login </button></a>
        <a href="firstpage.jsp"><button class="two">Signup </button></a> 
        <a href="fetch"><button class="three"> Fetch </button></a> 
        
       
</body>
</html>