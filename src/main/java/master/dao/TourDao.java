package master.dao;
import java.sql.*;
import java.util.ArrayList;

import master.dto.TourDto;
import master.dto.TourDto;
import master.utilities.ConnectionFactory;
public class TourDao {
		Connection cn=null;
		Statement st=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String insert_sql="insert into tourdata values(?,?,?,?,?,?,?,?)";
		String delete_sql="delete from tourdata where tid=?";
		String select_sql="select * from tourdata";
		String update_sql="update tourdata set nofdays=?,doftour tprice=? where tid=? ";
		public void insertData(TourDto rdto)
		{
			try
			{
				ConnectionFactory con=new ConnectionFactory();
				cn=con.getConn();
				ps=cn.prepareStatement(insert_sql);
				ps.setString(1,rdto.getTid());
				ps.setString(2,rdto.getTname());
				ps.setString(3,rdto.getTplace1());
				ps.setString(4,rdto.getTplace2());
				ps.setString(5,rdto.getTplace3());
				ps.setInt(6,rdto.getNofdays());
				ps.setString(7,rdto.getDoftour());
				ps.setDouble(8,rdto.getTprice());
				ps.executeUpdate();
				cn.commit();
			}
			
			catch(SQLException se)
			{
				se.printStackTrace();
			}
		}
		public void updateData(TourDto rdto)
		{
			try
			{
				ConnectionFactory con=new ConnectionFactory();
				cn=con.getConn();
				ps=cn.prepareStatement(update_sql);
				ps.setString(4,rdto.getTid());
				ps.setInt(1,rdto.getNofdays());
				ps.setString(2,rdto.getDoftour());
				ps.setDouble(3,rdto.getTprice());
				ps.executeUpdate();
				cn.commit();
			}
			
			catch(SQLException se)
			{
				se.printStackTrace();
			}
		}
		public void deleteData(TourDto rdto)
		{
			try
			{
				ConnectionFactory con=new ConnectionFactory();
				cn=con.getConn();
				ps=cn.prepareStatement(delete_sql);
				ps.setString(1,rdto.getTid());
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
					TourDto rdto=new TourDto();
					rdto.setTid(rs.getString(1));
					rdto.setTname(rs.getString(2));
					rdto.setTplace1(rs.getString(3));
					rdto.setTplace2(rs.getString(4));
					rdto.setTplace3(rs.getString(5));
					rdto.setNofdays(rs.getInt(6));
					rdto.setDoftour(rs.getString(7));
					rdto.setTprice(rs.getDouble(8));
					arr.add(rdto);
					
					
				}
			}
			
			catch(SQLException se)
			{
				se.printStackTrace();
			}
			return arr;
		
		}
		
		public ArrayList getTourDetails(String tid)
		{
			String sql="select * from tourdata where tid='"+tid+"'";
			ArrayList arr1=new ArrayList();
			try
			{
				ConnectionFactory con=new ConnectionFactory();
				cn=con.getConn();
				st=cn.createStatement();
				rs=st.executeQuery(sql);
				while(rs.next())
				{
					TourDto rdto=new TourDto();
					//rdto.setTourid(rs.getString(1));
					rdto.setTname(rs.getString(2));
					rdto.setTplace1(rs.getString(3));
					rdto.setTplace2(rs.getString(4));
					rdto.setTplace3(rs.getString(5));
					rdto.setNofdays(rs.getInt(6));
					rdto.setDoftour(rs.getString(7));
					rdto.setTprice(rs.getDouble(8));
					arr1.add(rdto);
					
					
				}
			}
			
			catch(SQLException se)
			{
				se.printStackTrace();
			}
			return arr1;
		}
	}


