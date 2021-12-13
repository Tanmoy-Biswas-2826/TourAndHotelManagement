package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.TourAddDAO;
import master.dto.TourAddDTO;

/**
 * Servlet implementation class TourDelServe
 */
public class TourDelServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String tid=request.getParameter("tid");
		
		TourAddDTO tdto=new TourAddDTO();
		tdto.setTid(tid);
		
		TourAddDAO tdao=new TourAddDAO();
		tdao.deleteData(tdto);
		response.sendRedirect("TourReport.jsp");
	}

}
