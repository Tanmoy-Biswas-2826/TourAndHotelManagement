 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>

<style>
*{
	margin:0;
	padding: 0;
}
body{
	background:url(images/1431632.jpg);
	background-position: center;
	background-size: cover;
	position: relative;
}
div.main{
	width: 500px;
	margin: 50px auto 0px auto;
}
h2{
	text-aling: center;
	padding: 5px;
	font-family: cursive;
	color:#98FB98
}
div.register{
	background-color:rgba(0,0,0,0.5);
	width:100%;
	font-size: 25px;
	border-redius: 10px;
	border: 1px soid rgba(255,255,255,0.3);
	box-shadow:2px 2px 15px rgba(0,0,0,0,3);
	color:#fff;
	 border-radius: 15px;
}
form#register{
	margin: 20px;
}
label{
	font-family:serif;
	font-size:20px;
	font-style:Normal;
	
}
input#name{
	width:300px;
	border:1px solid #ddd;
	border-redius: 3px;
	outline:0;
	padding:7px;
	background-color:#B0C4DE;
	box-shadow:insert 1px 1px 5px rgba(0,0,0,0.3);
}
input#submit{
	width:450px;
	padding:7px;
	font-size:16px;
	font-family:sans-serif;
	font-weight:600;
	border-radius:3px;
	background-color:#1E90FF;
	color:#fff;
	cursor:pointer;
	border:1px solid rgba(255,255,255,0.3);
	box-shadow:1px 1px 5px rgba(0,0,0,0.3);
	margin-bottom:20px;
}

</style>
</head>
<body>

<div class="main">
<div class="register">

<center><u><h2>Register Here</h2></u></center>
<form id="register" action="RegisterServe" method="post">
<label>ENTER USER NAME:</label>
<br>
<input type="text" name="uname" id="name" required>
<br><br>
<label>ENTER USER PASSWORD:</label>
<br>
<input type="password" name="pass" id="name" required>
<br><br>
<label>ENTER NAME:</label>
<br>
<input type="text" name="name" id="name"  required>
<br><br>
<label>ENTER EMAIL ID:</label>
<br>
<input type="text" name="email" id="name" required>
<br><br>
<label>ENTER PH.NO:</label>
<br>
<input type="text" name="pno" id="name" required >
<br><br>
<input type="submit" value="submit" name="submit" id="submit">
</form>
</div>
</div>
</body>
</html>