package master.utilities;
import java.sql.*;

public class ConnectionFactory {
	Connection cn=null;
	public Connection getConn()
{
	try
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");//REGISTER AND LOAD THE DRIVER
	cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","tour","tour");
	}
	catch(ClassNotFoundException ce)
	{
		ce.printStackTrace();
	}
	catch(SQLException se)
	{
		se.printStackTrace();
	}
	return cn;
}
}
