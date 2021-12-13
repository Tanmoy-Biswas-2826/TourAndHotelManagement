package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.AllotmentDAO;
import master.dao.HotelAddDAO;
import master.dto.AllotmentDTO;
import master.dto.HotelAddDTO;

/**
 * Servlet implementation class AllotmentServe
 */
public class AllotmentServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String tid=request.getParameter("tid");
		String hid=request.getParameter("hid");
		AllotmentDTO adto=new AllotmentDTO();
		adto.setTid(tid);
		adto.setHid(hid);
		
		
		AllotmentDAO adao=new AllotmentDAO();
		adao.insertData(adto);
		response.sendRedirect("AllotmentReport.jsp");
	}

}
