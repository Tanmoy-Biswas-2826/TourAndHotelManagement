package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.BookingDAO;
import master.dao.TourAddDAO;
import master.dto.BookingDTO;
import master.dto.TourAddDTO;

/**
 * Servlet implementation class BookingServe
 */
public class BookingServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String tid=request.getParameter("tid");
		String tname=request.getParameter("tname");
		String tplace1=request.getParameter("tplace1");
		String hotelname1=request.getParameter("hotelname1");
		String tplace2=request.getParameter("tplace2");
		String hotelname2=request.getParameter("hotelname2");
		String tplace3=request.getParameter("tplace3");
		String hotelname3=request.getParameter("hotelname3");
		String nofdays=request.getParameter("nofdays");
		double tprice=Double.parseDouble(request.getParameter("tprice"));
		String doftour=request.getParameter("doftour");
		String bdate=request.getParameter("bdate");
		Integer num_of_persons =Integer.parseInt(request.getParameter("num_of_persons"));
		String room_types =request.getParameter("room_types");
		String uname =request.getParameter("uname");
		String bank =request.getParameter("bank");
		Integer cardno =Integer.parseInt(request.getParameter("cardno"));
		String pass =request.getParameter("pass");
		String doe =request.getParameter("doe");
		String cvv =request.getParameter("cvv");
		double total_price =Double.parseDouble(request.getParameter("total_price"));
		
		BookingDTO bdto=new BookingDTO();
		bdto.setTid(tid);
		bdto.setTname(tname);
		bdto.setTplace1(tplace1);
		bdto.setHotelname1(hotelname1);
		bdto.setTplace2(tplace2);
		bdto.setHotelname2(hotelname2);
		bdto.setTplace3(tplace3);
		bdto.setHotelname3(hotelname3);
		bdto.setNofdays(nofdays);
		bdto.setTprice(tprice);
		bdto.setDoftour(doftour);
		bdto.setBdate(bdate);
		bdto.setNum_of_persons(num_of_persons);
		bdto.setRoom_types(room_types);
		bdto.setUname(uname);
		bdto.setBank(bank);
		bdto.setCardno(cardno);
		bdto.setPass(pass);
		bdto.setDoe(doe);
		bdto.setCvv(cvv);
		bdto.setTotal_price(total_price);
		BookingDAO bdao=new BookingDAO();
		bdao.insertData(bdto);
		response.sendRedirect("BookingReport.jsp");
	}

}
