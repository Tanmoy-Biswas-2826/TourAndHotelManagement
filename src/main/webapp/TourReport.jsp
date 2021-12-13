<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.TourAddDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table, td, th {
  border: 1px solid black;
}

table{
border-collapse: collapse;
width: 50%;

background-color: #f0f8ff;
}
body{

background-image:url("images/sincerely-media-Y0hLfXje8bQ-unsplash.jpg");

  min-height: 700px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
table.center{
width:70%;
hight:70%;
margin-left:auto;
margin-right:auto;
}
td{
padding:10px;
text-align:left;
}
th{
background-color: #04AA6D;
color:white;
height: 50px;
}
caption{
display: table-caption;
text-align:center;
font-weight:bold;
font-size:200%;
padding:20px;
font-family:serif;

}
.pill-nav a {
  display: inline-block;
  color: black;
  font-weight:bold;
  text-align: center;
  padding: 10px;
  text-decoration: none;
  font-size: 17px;
  border-radius: 5px;
}

.pill-nav a:hover {
  background-color: #009900;
  color: white;
}

.pill-nav a.active {
  background-color: dodgerblue;
  color: white;
}


</style>
</head>
<body>
<table class="center">
<div class="pill-nav">
 <a href="Home.jsp">Home</a>
 <a href="LoginPage.jsp">Login</a>
 <a href="ClientMenu.jsp">Menu</a>
 <a href="Registration.jsp">Registration</a>
</div>
<caption>Tour Report</caption>

<tr>
<th>Tour_Id</th>
<th>Tour_Name</th>
<th>Tour_Place1</th>
<th>Tour_Place2</th>
<th>Tour_Place3</th>
<th>No_Of_Days</th>
<th>Date_Of_Tour</th>
<th>Tour_Price</th>
</tr>

<%
TourAddDAO tdao=new TourAddDAO();
ResultSet rs= tdao.getData();
  while(rs.next())
  {
	  String tid=rs.getString(1);
	  String tname=rs.getString(2);
	  String tplace1=rs.getString(3);
	  String tplace2=rs.getString(4);
	  String tplace3=rs.getString(5);
	  String nofdays=rs.getString(6);
	  String doftour=rs.getString(7);
	  double price=rs.getInt(8);

%>

<tr>
<td><%=tid %></td>
<td><%=tname %></td>
<td><%=tplace1 %></td>
<td><%=tplace2 %></td>
<td><%=tplace3 %></td>
<td><%=nofdays %></td>
<td><%=doftour %></td>
<td><%=price %></td>
</tr>
<%
  }
%>


</table>

</body>
</html>