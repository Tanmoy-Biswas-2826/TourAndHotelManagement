package master.dao;
import java.sql.*;

import master.dto.BookingDTO;
import master.dto.TourAddDTO;
import master.utilities.ConnectionFactory;
public class BookingDAO {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String insert_sql="insert into bookingdata values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	//String delete_sql="delete from bookingdata where tid=?";
	//String update_sql="update bookingdata set nofdays=? doftour=? tprice=? where tid=?";
	String select_sql="select * from bookingdata";
	public void insertData( BookingDTO bdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
			
			ps.setString(1,bdto.getTid());
			ps.setString(2,bdto.getTname());
			ps.setString(3,bdto.getTplace1());
			ps.setString(4,bdto.getHotelname1());
			ps.setString(5,bdto.getTplace2());
			ps.setString(6,bdto.getHotelname2());
			ps.setString(7,bdto.getTplace3());
			ps.setString(8,bdto.getHotelname3());
			ps.setString(9,bdto.getNofdays());
			ps.setDouble(10,bdto.getTprice());
			ps.setString(11,bdto.getDoftour());
			ps.setString(12,bdto.getBdate());
			ps.setInt(13,bdto.getNum_of_persons());
			ps.setString(14,bdto.getRoom_types());
			ps.setString(15,bdto.getUname());
			ps.setString(16,bdto.getBank());
			ps.setInt(17,bdto.getCardno());
			ps.setString(18,bdto.getPass());
			ps.setString(19,bdto.getDoe());
			ps.setString(20,bdto.getCvv());
			ps.setDouble(21,bdto.getTotal_price());
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
	
	