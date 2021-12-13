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
 * Servlet implementation class HotelAddServe
 */
public class HotelAddServe extends HttpServlet {
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
		//System.out.println(hid);
		//System.out.println(hname);
		//System.out.println(tplace);
		HotelAddDTO hdto=new HotelAddDTO();
		hdto.setHid(hid);
		hdto.setHname(hname);
		hdto.setTplace(tplace);
		
		HotelAddDAO hdao=new HotelAddDAO();
		hdao.insertData(hdto);
		response.sendRedirect("HotelReport.jsp");
	}

}
