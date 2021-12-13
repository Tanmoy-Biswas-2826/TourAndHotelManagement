package master.dao;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.RegisterDTO;
import master.utilities.ConnectionFactory;

public class LoginDAO {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	public boolean checklogin( String uname,String pass)
	{
		String sql="select * from registrationdata where uname='"+uname+"' and pass='"+pass+"'";
		boolean flag=false;
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next()) {
				flag=true;
			}
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return flag;
	}
}
