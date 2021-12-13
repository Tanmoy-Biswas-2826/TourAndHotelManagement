package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.HotelAddDAO;
import master.dao.TourAddDAO;
import master.dto.HotelAddDTO;
import master.dto.TourAddDTO;

/**
 * Servlet implementation class HotelDelServe
 */
public class HotelDelServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub 
		response.setContentType("text/html");
		String hid=request.getParameter("hid");
		
		HotelAddDTO hdto=new HotelAddDTO();
		hdto.setHid(hid);
		
		HotelAddDAO hdao=new HotelAddDAO();
		hdao.deleteData(hdto);
		response.sendRedirect("HotelReport.jsp");
	}

}
