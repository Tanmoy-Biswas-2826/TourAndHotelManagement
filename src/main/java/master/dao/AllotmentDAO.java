package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.AllotmentDTO;
import master.dto.HotelAddDTO;
import master.utilities.ConnectionFactory;

public class AllotmentDAO {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String insert_sql="insert into allotment values(?,?)";
	//String delete_sql="delete from hoteldata where hid=?";

	String select_sql="select t.tid,t.tname,t.tplace1,t.tplace2,t.tplace3,t.nofdays,t.doftour,t.price,h.hid,h.hname,h.tplace"
			+ "from tourdata t,hoteldata h,allotment a"
			+ "where"
			+ "t.tid=a.tid and a.hid=h.hid";
			
	public void insertData( AllotmentDTO adto)
	{
		try
		{
			
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1,adto.getTid());
			ps.setString(2,adto.getHid());
			
	
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
