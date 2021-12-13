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

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/michael-lee-PicDhglRBCs-unsplash.jpg");
  

  min-height: 750px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size:cover;
}


/* Add styles to the form container */
.container {
  position: absolute;
  right:0;
  bottom:50px;
  right:450px;
  max-width: 600px;
  padding: 30px;
  background-color:  #2eb82e;
  border-radius: 15px;
  
}

/* Full-width input fields */
input[type=text]{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color:#ff8c66;
  color: white;
  padding: 16px 20px;
  border: yes;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
.topnav {
  overflow: hidden;
  background-color: #3399ff;
}

.topnav a {
  float: right;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 5px;
  text-decoration: none;
  font-size: 17px
  
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
<div class="bg-img">
<div class="topnav">
<a href="Home.jsp">Home</a>
 <a href="LoginPage.jsp">Login</a>
 <a href="Registration.jsp">Registration</a>
<form action="HotelUpdateServe" method="post" class="container">
<table>
<h1>Hotel Update</h1>
<tr>
<td><label><b>Hotel ID:</b></label></td>
<td><input type="text"  placeholder="Enter Hotel ID" name="hid"></td>
</tr>
<tr>
<td><label><b>Hotel Name:</b></label></td>
<td><input type="text" placeholder="Enter Hotel name" name="hname"></td>
</tr>
<tr>
<td><label><b>Tour Place: </b></label></td>
<td><input type="text" placeholder="Enter Tour Place" name="tplace"></td>
</tr>
</table>

<button type="submit" class="btn">UPDATE</button>


</form>
</body>
</html>