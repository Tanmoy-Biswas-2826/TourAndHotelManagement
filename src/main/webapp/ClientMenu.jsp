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
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}
.bg-img {
  /* The image used */
  background-image: url("images/1431681-ink.jpeg");

  min-height: 630px;

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


<h1> Coustomer Menu</h1>
<a href="Registration.jsp">Registration</a>
<p>
<a href="LoginPage.jsp">Login</a>
<p>
<a href="Booking.jsp"> Tour Booking</a>
<p>
<a href="TourReport.jsp">Tour Report</a>
<p>
<a href="HotelReport.jsp">Hotel Report</a>
<p>
<a href="BookingReport.jsp">Booking Report</a>
<p>
<a href="Booking.jsp">Search Booking</a>
</div>
<div class="bg-img">
</div>
</body>
</html>