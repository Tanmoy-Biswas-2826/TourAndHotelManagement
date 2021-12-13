package master.dao;
import java.sql.*;

import java.util.ArrayList;

import master.dto.TourAddDTO;
import master.utilities.ConnectionFactory;
public class TourAddDAO {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String insert_sql="insert into tourdata values(?,?,?,?,?,?,?,?)";
	String delete_sql="delete from tourdata where tid=?";
	String update_sql="update tourdata set nofdays=?,doftour=?,price=? where tid=?";
	String select_sql="select * from tourdata order by tid";
	public void insertData( TourAddDTO tdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1,tdto.getTid());
			ps.setString(2,tdto.getTname());
			ps.setString(3,tdto.getTplace1());
			ps.setString(4,tdto.getTplace2());
			ps.setString(5,tdto.getTplace3());
			ps.setString(6,tdto.getNofdays());
			ps.setString(7,tdto.getDoftour());
			ps.setDouble(8,tdto.getPrice());
			ps.executeUpdate();
			cn.commit();
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void deleteData( TourAddDTO tdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(delete_sql);
			ps.setString(1,tdto.getTid());
			
			ps.executeUpdate();
			cn.commit();
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void updateData( TourAddDTO tdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(update_sql);
			ps.setString(4,tdto.getTid());
			ps.setString(1,tdto.getNofdays());
			ps.setString(2,tdto.getDoftour());
			ps.setDouble(3,tdto.getPrice());
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