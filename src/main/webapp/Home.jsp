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
body{
  /* The image used */
  background-image: url(images/landscape-336542_1920.jpg);

  min-height: 750px;

  /* Center and scale the image*/
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.pill-nav a {
  display: inline-block;
  color: white;
  text-align: center;
  font-weight:bold;
  padding: 10px;
  font-family:Cursive
  font-size: 17px;
  border-radius: 5px;
  justify-content-end;
  
}

.pill-nav a:hover {
  background-color: #6495ed;
  color: white;
}

.pill-nav a.active {
  background-color: dodgerblue;
  color: white;
}
.centered {
  position: absolute;
  top:45%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-size:70px;
  color:white;
  font-family:verdana;
}
.centered2{
  position: absolute;
  top: 53%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-size:20px;
  color:white;
  font-family:verdana;
}
</style>
</head>
<body>
<form action="HomeServe" method="post"></form>
<div class="pill-nav">
 <a href="#home">Home</a>
 <a href="LoginPage.jsp">Login</a>
 <a href="ClientMenu.jsp">Menu</a>
 <a href="Registration.jsp">Registration</a>
</div>
<div class="bg-img">
<div class="centered">Welcome To Aurora</div>
<div class="centered2">________HOTEL & TRAVEL________</div>
</div>


</body>
</html>