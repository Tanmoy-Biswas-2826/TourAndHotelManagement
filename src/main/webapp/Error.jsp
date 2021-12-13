<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  background-color:skyblue;
}
.container {
  position: relative;
  text-align: center;
  color: red;
}
.centered {
  position: absolute;
 
  left: 50%;
  top:100%;
  bottom:800%;
  transform: translate(-50%, -50%);
  font-size:30px;
  font-variant: small-caps;
  font-weight: bold;
  font-style: oblique;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: right;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

</style>
</head>
<body>
<div class="topnav">
<a href="#home">Home</a>
 <a href="LoginPage.jsp">Login</a>
 <a href="Registration.jsp">Registration</a>
</div>
<div class="container">
  <div class="centered">SORRY! Your User Name or Password Wrong Please Check And Login Again</div>
</div>
</html>