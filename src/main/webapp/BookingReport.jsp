<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.BookingDAO"%>
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
width: 100%;
border:0 ;
cellspacing:0;
cellpadding:0;
}
table, td, th {
  border: 1px solid black;
}
body{
background-image:url("images/willian-justen-de-vasconcellos-_MMP5j_fCqw-unsplash (1).jpg");
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
  font-family:Cursive;
}
.pill-nav a:hover {
  background-color: #6495ed;
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
<caption>Booking Report</caption>


<tr>
<th>Tour_Id</th>
<th>Tour_Name</th>
<th>Tour_Place1</th>
<th>Hotel_Name1</th>
<th>Tour_Place2</th>
<th>Hotel_Name2</th>
<th>Tour_Place3</th>
<th>Hotel_Name3</th>
<th>No_Of_Days</th>
<th>Tour_Price</th>
<th>Date_Of_Tour</th>
<th>Booking_Date</th>
<th>No_Of_Persons</th>
<th>Room_Types</th>
<th>User_Name</th>
<th>Bank_Name</th>
<th>Card_No</th>
<th>Password</th>
<th>Date_Of_Expeiary</th>
<th>Cvv_No</th>
<th>otal_Price</th>
</tr>
<%
BookingDAO tdao=new BookingDAO();
ResultSet rs= tdao.getData();
  while(rs.next())
  {
	  String tid=rs.getString(1);
	  String tname=rs.getString(2);
	  String tplace1=rs.getString(3);
	  String hotelname1=rs.getString(4);
	  String tplace2=rs.getString(5);
	  String hotelname2=rs.getString(6);
	  String tplace3=rs.getString(7);
	  String hotelname3=rs.getString(8);
	  String nofdays=rs.getString(9);
	  double tprice=rs.getInt(10);
	  String doftour=rs.getString(11);
	  String bdate=rs.getString(12);
	  Integer num_of_persons=rs.getInt(13);
	  String room_types=rs.getString(14);
	  String uname=rs.getString(15);
	  String bank=rs.getString(16);
	  Integer cardno=rs.getInt(17);
	  String pass=rs.getString(18);
	  String doe=rs.getString(19);
	  String cvv=rs.getString(20);
	  double total_price=rs.getInt(21);

%>
<tr>
<td><%=tid %></td>
<td><%=tname %></td>
<td><%=tplace1 %></td>
<td><%=hotelname1 %></td>
<td><%=tplace2 %></td>
<td><%=hotelname2 %></td>
<td><%=tplace3 %></td>
<td><%=hotelname3 %></td>
<td><%=nofdays %></td>
<td><%=tprice %></td>
<td><%=doftour %></td>
<td><%=bdate %></td>
<td><%=num_of_persons %></td>
<td><%=room_types %></td>
<td><%=uname %></td>
<td><%=bank %></td>
<td><%=cardno %></td>
<td><%=pass %></td>
<td><%=doe %></td>
<td><%=cvv%></td>
<td><%=total_price%></td>
</tr>
<%
  }
%>


</table>
</body>
</html>