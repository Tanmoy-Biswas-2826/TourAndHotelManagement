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
  background-image: url("images/pexels-stijn-dijkstra-2659475-ink.jpeg"),url("images/pexels-tomas-anunziata-3876328-ink.jpeg");
  

  min-height: 750px;

  /* Center and scale the image nicely */
  background-position:left,right;
  background-repeat: no-repeat;
  background-size: 650px 950px, 650px 950px;
  position: relative;
}


/* Add styles to the form container */
.container {
  position:relative;
  
  right:0px;
  left:410px;
  top:400px;
  font-size: 20px;
  margin: 50px;
  max-width: 500px;
  padding: 15px;
  background-color:rgba(0,0,0,0.5);
  border-radius: 15px;
  box-shadow:2px 2px 15px rgba(0,0,0,0,3);
	color:#fff;
   
  
}

/* Full-width input fields */
input[type=text] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: yes;
  background: #f1f1f1;
}

input[type=text]:focus {
  background-color: #ddd;
  outline: yes;
}

/* Set a style for the submit button */
.btn {
  background-color: #065d93;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
  position:absolute;
  border-radius: 15px;
}

.btn:hover {
  opacity: 1;
}

</style>
</head>

<body>
<div class="bg-img">
<form action="HotelDelServe" method="post" class="container">
<center><h2> DELETE HOTEL</h2></center>
<table>
<tr>
<td><label for="hid"><b>Hotel Id:</b></label></td>
<td><input type="text" placeholder="Enter hotel Id" name="hid" required></td>
<td><button type="submit" class="btn">DELETE</button></td>
</tr>
</table>
</form>

</body>
</html>