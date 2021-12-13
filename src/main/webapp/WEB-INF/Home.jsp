<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

 *{
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/1431610.jpg");

  min-height: 750px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
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
h2{
color:white;
}
::-webkit-input-placeholder {
  color: #ffffff;
}
</style>
</head>
<body>
<div class="bg-img">
<div class="topnav">
<a href="#home">Home</a>
 <a href="LoginPage.jsp">Login</a>
 <a href="Registration.jsp">Registration</a>
</div>
<form action="" method="post">
<h2><u> LOGIN</u></h2>
<table>
</table>
</div>
</div>
</form>
</body>
</html>