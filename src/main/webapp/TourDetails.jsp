<%@page import="master.dto.TourDto"%>
<%@page import="master.dao.TourDao"%>

<%@ page import="java.util.*"%>

<%
String tid=request.getParameter("tid");
TourDao sdao6=new TourDao();
ArrayList details1=sdao6.getTourDetails(tid);
System.out.println("Details::"+details1);
Iterator itr9=details1.iterator();
while(itr9.hasNext())
{
   //System.out.println(rs.getString(1));
 TourDto s6=(TourDto)itr9.next();
   out.println(s6.getTname() +"#");
   //System.out.println("Details::"+s6.getTNAME());
   out.println(s6.getTplace1() +"#");
  //System.out.println("Details::"+s6.getTPLACE1());
   out.println(s6.getTplace2()+"#");
  // System.out.println("Details::"+s6.getTPLACE2());
   out.println(s6.getTplace3()+"#");
   //System.out.println("Details::"+s6.getTPLACE3());
   out.println(s6.getNofdays()+"#");
   //System.out.println("Details::"+s6.getDAYS());
   out.println(s6.getTprice()+"#");
  //System.out.println("Details::"+s6.getTPRICE());
   //out.println(s.getCphn());
   out.println(s6.getDoftour()+"#");
 }

%>