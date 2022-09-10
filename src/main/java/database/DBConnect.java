package database;

import java.sql.*;

public class DBConnect {
	private static Connection conn;

	public static Connection  getconn()
	{
	
			try {
				if(conn==null)
				{
				//Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/backend","root","root");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		
		return conn;
	}

}

