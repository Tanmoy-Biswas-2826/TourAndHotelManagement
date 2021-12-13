<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body, html {
  height:50%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/s-migaj-Yui5vfKHuzs-unsplash.jpg");
  

  min-height: 750px;

  /* Center and scale the image  */
  background-position: center;
  background-repeat: no-repeat;
  background-size:cover;
  position: relative;
}


/* Add styles  form container */
.container {
  position: center;
  bottom:0;
  right:400px;
  margin: 20px;
  padding: 50px;
  }
/* Full-width input fields */
input[type=text], input[type=number],input[type=date]{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  font-size:15px
  
}

input[type=text]:focus, input[type=number]:focus,input[type=date]:focus{
  background-color: #ddd;
  outline: none;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/*  style for the submit button */
.btn {
  background-color: #065d93;
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
h1{
color: #00b33c;
font-family:serif;
font-size:50px;
}
label{
color:white;}
</style>
</head>
<body>
<div class="bg-img">
<form action="AllotmentServe" method="post" class="container">
<center><h1>Hotel Allotment</h1></center>
<p>
<table>
<tr>
<td><label><b>Tour ID</b></label></td>
<td><input type="text"  placeholder="Enter Tour Id"name="tid"></td>
</tr>
<tr>
<td><label> <b>Hotel ID</b></label></td>
<td><input type="text" placeholder="Enter Hotel Id"name="hid"></td>
<td><button type="submit" class="btn" > SUBMIT</button>
</tr>
</div>
</table>
</form>
</body>
</html>