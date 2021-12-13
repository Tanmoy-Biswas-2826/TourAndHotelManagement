<%@page import="master.dao.HotelDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String tplace1=request.getParameter("tplace1");
HotelDao sdao6=new HotelDao();
String hname=sdao6.getHotelName(tplace1);
System.out.println(hname);
   out.println(hname +"#");
   
 

%>
</body>
</html>