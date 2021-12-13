<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.HotelAddDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
border-collapse: collapse;
width: 50%;
}
table, td, th {
  border: 1px solid black;
}
body{
background-image:url("images/mark-tegethoff-4umhCRrivis-unsplash.jpg");
font-family: Arial, Helvetica, sans-serif;
}
table.center{
margin-left:auto;
margin-right:auto;
}
th,td{
padding:2px;
text-align:left;
border-bottom:1px solid #add;
}
tr:nth-child(even) {
background-color: #f2f2f2;
}
th{
background-color: #0080ff;
color:white;
height: 50px;
}
tr{
font-size:100%;
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
  text-align: center;
  font-weight:bold;
  padding: 10px;
  text-decoration: none;
  font-size: 17px;
  border-radius: 5px;
  font-family:Cursive
}

.pill-nav a:hover {
  background-color: #00bfff;
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
<caption>Hotel Report</caption>
<tr>
	<th>Hotel_Id</th>
	<th>Hotel_Name</th>
	<th>Tour_Place</th>
</tr>
<%
HotelAddDAO hdao=new HotelAddDAO();
ResultSet rs= hdao.getData();
  while(rs.next())
  {
	  String hid=rs.getString(1);
	  String hname=rs.getString(2);
	  String tplace=rs.getString(3);
	 

	  %>
	  <tr>
	  <td><%=hid %></td>
	  <td><%=hname %></td>
	  <td><%=tplace %></td>
	  </tr>
	  <%
	    }
  %>


</table>
</body>
</html>