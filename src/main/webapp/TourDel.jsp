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
  background-image: url("images/Untitled design.png");
  

  min-height:950px;

  /* Center and scale the image nicely */
  background-position:center;
  background-repeat: no-repeat;
  background-size:cover;
  position: relative;
  padding:100px;
}


/* Add styles to the form container */
.container {
  position:relative;
  
  right:0px;
  left:270px;
  top:200px;
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
<form action="TourDelServe" method="post" class="container">
<center><h2> DELETE TOUR</h2></center>
<table>
<tr>
<td><label for="tid"><b>Tour ID:</b></label></td>
<td><input type="text"  placeholder="Enter tour id" name="tid" required></td>
<td><button  type="submit" class="btn">DELETE</button></td>
</tr>
</table>
</form>
</body>
</html>