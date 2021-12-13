package master.dao;
import java.sql.*;

import master.dto.RegisterDTO;
import master.dto.TourAddDTO;
import master.utilities.ConnectionFactory;
public class RegisterDAO {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String insert_sql="insert into registrationdata values(?,?,?,?,?)";
	//String delete_sql="delete from registrationdata where tid=?";
	//String update_sql="update registrationdata set pass=? name=? email=? pno=? where uname=?";
	String select_sql="select * from registrationdata";
	public void insertData( RegisterDTO rdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1,rdto.getUname());
			ps.setString(2,rdto.getPass());
			ps.setString(3,rdto.getName());
			ps.setString(4,rdto.getEmail());
			ps.setString(5,rdto.getPno());
			ps.executeUpdate();
			cn.commit();
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public ResultSet getData()
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql);
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
}
