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
  background-image: url("images/surya-teja-oIXJ839p55k-unsplash.jpg");
  

  min-height: 750px;

  /* Center and scale the image */
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
  max-width: 500px;
  padding: 30px;
  background-color: #a9a9a9;
  
}

/* Full-width input fields */
input[type=text], input[type=text], input[type=text], input[type=text]{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=text]:focus,  input[type=text]:focus,  input[type=text]:focus {
  background-color: #ddd;
  outline: none;
}

/* style for the submit button */
.btn {
  background-color:#ff8c66;
  color: white;
  padding: 16px 20px;
  border: yes;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
h1{
color: 	#4000ff;
font-family:serif;
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
</style>
</head>
<body>
<div class="bg-img">
<div class="topnav">
<a href="Home.jsp">Home</a>
 <a href="LoginPage.jsp">Login</a>
 <a href="Registration.jsp">Registration</a>
<form action="TourUpdateServe" method="post" class="container" >

<table>
<center><h1>Tour Update</h1></center>
<tr>
<td><label for="tid"><b>Tour ID:</b></label></td>
<td><input type="text" placeholder="Enter tour id" name="tid"></td>

<td><label for="nofd"><b>Number Of Days:</b></label></td>
<td><input type="text" placeholder="Enter Enter no of Days" name="nofdays"></td>
</tr>
<tr>
<td><label for="tid"><b>Date Of Tour:</b></label></td>
<td><input type="date" placeholder="Enter date of tour" name="doftour"></td>

<td><label for="tid"><b>Price:</b></label></td>
<td><input type="text" placeholder="Enter price" name="price"></td>
</tr>
</table>
<button type="submit" class="btn">UPDATE</button>


</form>
</body>
</html>