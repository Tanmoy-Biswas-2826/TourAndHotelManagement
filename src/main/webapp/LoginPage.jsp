<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
  background-image: url(images/1431610.jpg);

  min-height: 750px;

  /* Center and scale the image*/
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 350px;
  bottom:200px;
  margin: 50px;
  max-width: 500px;
  padding: 16px;
  background-color:rgba(0,0,0,0);
  border-radius: 15px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background:  rgba(0,0,0,0.5);
  color:white;
}

/* Set a style for the submit button */
.btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  border-radius: 15px;
}

.btn:hover {
  opacity: 1;
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
<a href="Home.jsp">Home</a>
 <a href="LoginPage.jsp">Login</a>
 <a href="Registration.jsp">Registration</a>
</div>
<form action="LoginServe" method="post" class="container">
<center><h2><u> LOGIN</u></h2></center>

<label for="username"></label>
<input type="text" placeholder="Enter Email" name="uname" required autofocus>

<label for="pass">></label>
<input type="password" placeholder="Enter Password" name="pass" required>

<button type="submit" class="btn">LOGIN</button>
</form>
</body>
</html>