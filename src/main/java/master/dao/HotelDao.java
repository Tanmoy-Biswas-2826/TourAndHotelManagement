package master.dao;
import java.sql.*;
import java.util.ArrayList;

import master.dto.HotelDto;
import master.dto.TourDto;
import master.utilities.ConnectionFactory;
public class HotelDao {
	Connection cn=null;
	Statement st=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	String insert_sql="insert into hoteldata values(?,?,?)";
	String delete_sql="delete from hoteldata where hid=?";
	String select_sql="select * from hoteldata order by hid";
	String update_sql="update hoteldata set hname=?,tplace=? where hid=? ";
	public void insertData(HotelDto hdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1,hdto.getHid());
			ps.setString(2,hdto.getHname());
			ps.setString(3,hdto.getTplace());
			ps.executeUpdate();
			cn.commit();
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void updateData(HotelDto hdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(update_sql);
			
			ps.setString(1,hdto.getHname());
			ps.setString(2,hdto.getTplace());
			ps.setString(3,hdto.getHid());
			ps.executeUpdate();
			cn.commit();
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void deleteData(HotelDto hdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(delete_sql);
			ps.setString(1,hdto.getHid());
			ps.executeUpdate();
			cn.commit();
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	
	public ArrayList getData()
	{
		ArrayList arr=new ArrayList();
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql);
			while(rs.next())
			{
				HotelDto hdto=new HotelDto();
				hdto.setHid(rs.getString(1));
				hdto.setHname(rs.getString(2));
				hdto.setTplace(rs.getString(3));
				arr.add(hdto);
				
				
			}
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return arr;
	
	}
	public String getHotelName(String tplace)
	{
		String sql="select hname from hoteldata where tplace='"+tplace+"'";
		String hname=null;
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next())
			{
				 hname=rs.getString(1);			
			}
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return hname;
	}
}
