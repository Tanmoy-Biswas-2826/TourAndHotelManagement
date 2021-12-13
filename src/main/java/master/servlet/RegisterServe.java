package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.HotelAddDAO;
import master.dao.RegisterDAO;
import master.dto.HotelAddDTO;
import master.dto.RegisterDTO;

/**
 * Servlet implementation class RegisterServe
 */
public class RegisterServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pno=request.getParameter("pno");
		RegisterDTO rdto=new RegisterDTO();
		rdto.setUname(uname);
		rdto.setPass(pass);
		rdto.setName(name);
		rdto.setEmail(email);
		rdto.setPno(pno);
		
		RegisterDAO rdao=new RegisterDAO();
		rdao.insertData(rdto);
		response.sendRedirect("RegistrationReport.jsp");
	}

}
