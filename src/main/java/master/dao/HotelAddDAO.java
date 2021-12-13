package master.dao;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import master.dto.HotelAddDTO;
import master.dto.TourAddDTO;
import master.utilities.ConnectionFactory;

public class HotelAddDAO {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String insert_sql="insert into hoteldata values(?,?,?)";
	String delete_sql="delete from hoteldata where hid=?";
	String update_sql="update hoteldata set hname=?,tplace=? where hid=?";
	String select_sql="select * from hoteldata";
	public void insertData( HotelAddDTO hdto)
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
	public void deleteData( HotelAddDTO hdto)
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
	public void updateData( HotelAddDTO hdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(update_sql);
			ps.setString(3,hdto.getHid());
			ps.setString(1,hdto.getHname());
			ps.setString(2,hdto.getTplace());
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
