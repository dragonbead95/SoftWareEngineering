package db;
import java.sql.*;

public class DBConn {
	public static Connection getMySqlConnection()
	{
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			//String url = "dbc:mysql://localhost/carlynne?useSSL=false";
			//String user = "carlynne";
			//String password = "tmvlzj92365";
			String url = "jdbc:mysql://localhost:3306/stdmanage?serverTimezone=UTC";
			String user = "root";
			String password = "root";
			
			
			
			conn = DriverManager.getConnection(url,user,password);
			
		}catch(ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
		return conn;
	}
}
