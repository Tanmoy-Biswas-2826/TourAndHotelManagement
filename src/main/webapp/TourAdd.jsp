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
  background-image: url("images/louis-magnotti-YvCg5X3pWzc-unsplash.jpg");
  

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

</style>
</head>
<body>
<div class="bg-img">
<form action="TourAddServe" method="post" class="container">
<center><h1><u>Tour Add</u></h1></center>
<p>
<table>
<tr>
<td><label><b>Tour ID:</b></label></td>
<td><input type="text" name="tid" placeholder="Enter Tour Id"></td>
</tr>
<tr>
<td><label><b>Tour Name:</b></label></td>
<td><input type="text" placeholder="Enter Tour Name" name="tname"></td>

<td><label><b>Tour Place1:</b></label></td>
<td><input type="text" placeholder="Enter Tour Place" name="tplace1"></td>

<td><label><b>Tour Place2:</b></label></td>
<td><input type="text" placeholder="Enter Tour Place"  name="tplace2" ></td>


<td><label><b>TourPlace3:</b></label></td>
<td><input type="text" placeholder="Enter Tour Place" name="tplace3"></td>
</tr>
<tr>
<td><label><b>No Of Days:</b></label></td>
<td><input type="number" placeholder="Enter No Of Days" name="nofdays"></td>


<td><label><b>Date Of Tour:</b></label></td>
<td><input type="date" placeholder="Enter Date Of Tour" name="doftour"></td>

<td><label><b>Tour Price:</b></label></td>
<td><input type="number" placeholder="Enter Price" name="price"></td>
</tr>
</table>
<button type="submit" class="btn">ADD</button>
</div>
</div>
</form>
</body>
</html>