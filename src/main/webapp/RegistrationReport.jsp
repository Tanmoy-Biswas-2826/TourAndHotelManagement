<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.RegisterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

background-image:url("images/simon-berger-twukN12EN7c-unsplash.jpg");

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
background-color:  #cc0000;
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
  background-color: #ff6666;
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
<caption>Registration Report</caption>

<tr>
<th>User_Name</th>
<th>User_Password</th>
<th>Name</th>
<th>Email_Id</th>
<th>Phone_No</th>
</tr>
<%
RegisterDAO rdao=new RegisterDAO();
ResultSet rs= rdao.getData();
  while(rs.next())
  {
	  String uname=rs.getString(1);
	  String pass=rs.getString(2);
	  String name=rs.getString(3);
	  String email=rs.getString(4);
	  String pno=rs.getString(5);
%>
<tr>
<td><%=uname %></td>
<td><%=pass %></td>
<td><%=name %></td>
<td><%=email %></td>
<td><%=pno %></td>
</tr>
<%
  }
%>


</table>

</body>
</html>