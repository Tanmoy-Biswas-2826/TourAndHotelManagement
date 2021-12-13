package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.TourAddDAO;
import master.dto.TourAddDTO;

/**
 * Servlet implementation class TourAddServe
 */
public class TourAddServe extends HttpServlet {
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
		String tplace2=request.getParameter("tplace2");
		String tplace3=request.getParameter("tplace3");
		String nofdays=request.getParameter("nofdays");
		String doftour=request.getParameter("doftour");
		double price=Double.parseDouble(request.getParameter("price"));
		TourAddDTO tdto=new TourAddDTO();
		tdto.setTid(tid);
		tdto.setTname(tname);
		tdto.setTplace1(tplace1);
		tdto.setTplace2(tplace2);
		tdto.setTplace3(tplace3);
		tdto.setNofdays(nofdays);
		tdto.setDoftour(doftour);
		tdto.setPrice(price);
		TourAddDAO tdao=new TourAddDAO();
		tdao.insertData(tdto);
		response.sendRedirect("TourReport.jsp");
	}

}
