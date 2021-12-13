<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  font-family: "Lato", sans-serif;

  
}

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 90px;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 18px;
  font-family:Cursive;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}
.bg-img {
  /* The image used */
  background-image: url("images/pexels-jimmy-teoh-1010657 (1).jpg");

  min-height: 750px;

  /* Center and scale the image nicely */
  background-position:right;
  background-repeat: no-repeat;
  background-size:1200px 900px;
  position: relative;
  padding: 30px;
}
h1{
color:#ffffff;
}


</style>
</head>
<body>
<div class="sidenav">

<h1>Admin Menu</h1>

<a href="TourAdd.jsp">Add Tour</a>
<p>
<a href="TourDel.jsp">Delete Tour</a>
<p>
<a href="TourUpdate.jsp">Update Tour</a>
<p>
<a href="HotelAdd.jsp">Add Hotel</a>
<p>
<a href="HotelDel.jsp">Delete Hotel</a>
<p>
<a href="HotelUpdate.jsp">Update Hotel</a>
<p>
<a href="HotelAllotment.jsp">Hotel Allotment</a>
<p>
<a href="LoginPage.jsp">Login</a>
</div>
<div class="bg-img">

</div>
</body>
</html>