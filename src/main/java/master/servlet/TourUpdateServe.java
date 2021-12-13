package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.TourAddDAO;
import master.dto.TourAddDTO;

/**
 * Servlet implementation class TourUpdateServe
 */
public class TourUpdateServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String tid=request.getParameter("tid");
		String nofdays=request.getParameter("nofdays");
		String doftour=request.getParameter("doftour");
		double price=Double.parseDouble(request.getParameter("price"));
		TourAddDTO tdto=new TourAddDTO();
		tdto.setTid(tid);
		tdto.setNofdays(nofdays);
		tdto.setDoftour(doftour);
		tdto.setPrice(price);
		TourAddDAO tdao=new TourAddDAO();
		tdao.updateData(tdto);
		response.sendRedirect("TourReport.jsp");
	}

}
