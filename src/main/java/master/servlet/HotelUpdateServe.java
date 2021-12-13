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
 * Servlet implementation class HotelUpdateServe
 */
public class HotelUpdateServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String hid=request.getParameter("hid");
		String hname=request.getParameter("hname");
		String tplace=request.getParameter("tplace");
		HotelAddDTO hdto=new HotelAddDTO();
		hdto.setHid(hid);
		hdto.setHname(hname);
		hdto.setTplace(tplace);
		
		HotelAddDAO hdao=new HotelAddDAO();
		hdao.updateData(hdto);
		response.sendRedirect("HotelReport.jsp");
	}

}
