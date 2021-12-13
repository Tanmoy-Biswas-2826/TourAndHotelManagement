<%@page import="master.dao.HotelDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String tplace1=request.getParameter("tplace1");
HotelDao sdao6=new HotelDao();
String hname=sdao6.getHotelName(tplace1);

   out.println(hname +"#");
   
 

%>