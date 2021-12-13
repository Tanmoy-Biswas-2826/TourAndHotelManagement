<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.AllotmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<td><label>Tour_Id</label></td>
<td><label>Tour_Name</label></td>
<td><label>Tour_Place1</label></td>
<td><label>Tour_Place2</label></td>
<td><label>Tour_Place3</label></td>
<td><label>No_of_Days</label></td>
<td><label>Date_of_tour</label></td>
<td><label>Price</label></td>
<td><label>Hotel_ID</label></td>
<td><label>Hotel_Name</label></td>
<td><label>Tour_Place</label></td>

</tr>
<%
AllotmentDAO adao=new AllotmentDAO();
ResultSet rs= adao.getData();
  while(rs.next())
  {
	  String tid=rs.getString(1);
	  String tname=rs.getString(2);
	  String tplace1=rs.getString(3);
	  String tplace2=rs.getString(4);
	  String tplace3=rs.getString(5);
	  String nofdays=rs.getString(6);
	  String doftour=rs.getString(7);
	  Float price=rs.getFloat(8);
	  String hid=rs.getString(9);
	  String hname=rs.getString(10);
	  String tplace=rs.getString(11);
	 
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