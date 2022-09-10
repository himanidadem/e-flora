package DAO;

import java.sql.*;

import user.*;

public class user1DAO {
	private Connection conn;

	public user1DAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public user1 loginuser(user1 user)
	{
		user1 us=null;
		try {
			String query="select * from admin where email_Id=? and password=?";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1,user.getId());
			ps.setString(2,user.getPassword());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				us=new user1();
				us.setId(rs.getString("email_Id"));
				us.setName(rs.getString("name"));
			}
				
			}
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	
		return us;
	}
	
	public boolean addadmin(user1 user)
	{
		
		try {
			String query="insert into Admin(email_Id,password,name) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, user.getId());
			ps.setString(2,user.getPassword());
			ps.setString(3,user.getName());

			int i = ps.executeUpdate();
			if (i == 1)
				return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
	
	public boolean editadmin(user1 user)
	{
		
		try {
			String query="update Admin set password=?,name=? where email_Id=?";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, user.getPassword());
			ps.setString(2,user.getName());
			ps.setString(3,user.getId());

			int i = ps.executeUpdate();
			if (i == 1)
				return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
	
}



