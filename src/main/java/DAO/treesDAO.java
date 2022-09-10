package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.util.*;
import user.*;

public class treesDAO {

	private Connection conn;

	public treesDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean add(trees user) {
		try {
			String query = "insert into trees(scientific_name,family,common_name,vernacular_name,hindi_name,telugu_name,useful_part,uses,flowering_period,root_type,habitat,category,child_cat,key_characteristics,location,link1,link2,link3,link4,link5,link6) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, user.getSname());
			ps.setString(2, user.getFamily());
			ps.setString(3, user.getCname());
			ps.setString(4, user.getVname());
			ps.setString(5, user.getHname());
			ps.setString(6, user.getTname());
			ps.setString(7, user.getPart());
			ps.setString(8, user.getUses());
			ps.setString(9, user.getPeriod());
			ps.setString(10, user.getRtype());
			ps.setString(11, user.getHabitat());
			ps.setString(12, user.getCat());
			ps.setString(13, user.getCcat());
			ps.setString(14, user.getKey());
			ps.setString(15, user.getLocation());
			ps.setString(16, user.getLink1());
			ps.setString(17, user.getLink2());
			ps.setString(18, user.getLink3());
			ps.setString(19, user.getLink4());
			ps.setString(20, user.getLink5());
			ps.setString(21, user.getLink6());
			int i = ps.executeUpdate();
			if (i == 1)
				return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	public List<trees> getdata() {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			String query = "select * from trees order by plant_id ";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				po.setPid(rs.getInt(1));
				po.setSname(rs.getString(2));
				po.setFamily(rs.getString(3));
				po.setCname(rs.getString(4));
				po.setVname(rs.getString(5));
				po.setHname(rs.getString(6));
				po.setTname(rs.getString(7));
				po.setPart(rs.getString(8));
				po.setUses(rs.getString(9));
				po.setPeriod(rs.getString(10));
				po.setRtype(rs.getString(11));
				po.setHabitat(rs.getString(12));
				po.setCat(rs.getString(13));
				po.setCcat(rs.getString(14));
				po.setKey(rs.getString(15));
				po.setLocation(rs.getString(16));
				po.setLink1(rs.getString(17));
				po.setLink2(rs.getString(18));
				po.setLink3(rs.getString(19));
				po.setLink4(rs.getString(20));
				po.setLink5(rs.getString(21));
				po.setLink6(rs.getString(22));
				

				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	public List<trees> getdatabysearch(String ch) {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			String query = "select * from trees where common_name like ? or scientific_name like ? or vernacular_name like ?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1,"%"+ch+"%");
			ps.setString(2,"%"+ch+"%");
			ps.setString(3,"%"+ch+"%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				po.setPid(rs.getInt(1));
				po.setSname(rs.getString(2));
				po.setFamily(rs.getString(3));
				po.setCname(rs.getString(4));
				po.setVname(rs.getString(5));
				po.setHname(rs.getString(6));
				po.setTname(rs.getString(7));
				po.setPart(rs.getString(8));
				po.setUses(rs.getString(9));
				po.setPeriod(rs.getString(10));
				po.setRtype(rs.getString(11));
				po.setHabitat(rs.getString(12));
				po.setCat(rs.getString(13));		
				po.setCcat(rs.getString(14));
				po.setKey(rs.getString(15));
				po.setLocation(rs.getString(16));
				po.setLink1(rs.getString(17));
				po.setLink2(rs.getString(18));
				po.setLink3(rs.getString(19));
				po.setLink4(rs.getString(20));
				po.setLink5(rs.getString(21));
				po.setLink6(rs.getString(22));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	
	public List<trees> getdatabyfilter(String rtype,String part,String location,String ccat) {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			String query = "select * from trees where root_type like ? and useful_part like ? and location like ? and child_cat like ?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1,"%"+rtype+"%");
			ps.setString(2,"%"+part+"%");
			ps.setString(3,"%"+location+"%");
			ps.setString(4,"%"+ccat+"%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				po.setPid(rs.getInt(1));
				po.setSname(rs.getString(2));
				po.setFamily(rs.getString(3));
				po.setCname(rs.getString(4));
				po.setVname(rs.getString(5));
				po.setHname(rs.getString(6));
				po.setTname(rs.getString(7));
				po.setPart(rs.getString(8));
				po.setUses(rs.getString(9));
				po.setPeriod(rs.getString(10));
				po.setRtype(rs.getString(11));
				po.setHabitat(rs.getString(12));
				po.setCat(rs.getString(13));
				po.setCcat(rs.getString(14));
				po.setKey(rs.getString(15));
				po.setLocation(rs.getString(16));
				po.setLink1(rs.getString(17));
				po.setLink2(rs.getString(18));
				po.setLink3(rs.getString(19));
				po.setLink4(rs.getString(20));
				po.setLink5(rs.getString(21));
				po.setLink6(rs.getString(22));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public List<trees> getdatasname() {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			String query = "select * from trees order by scientific_name";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				po.setPid(rs.getInt(1));
				po.setSname(rs.getString(2));
				po.setFamily(rs.getString(3));
				po.setCname(rs.getString(4));
				po.setVname(rs.getString(5));
				po.setHname(rs.getString(6));
				po.setTname(rs.getString(7));
				po.setPart(rs.getString(8));
				po.setUses(rs.getString(9));
				po.setPeriod(rs.getString(10));
				po.setRtype(rs.getString(11));
				po.setHabitat(rs.getString(12));
				po.setCat(rs.getString(13));
				po.setCcat(rs.getString(14));
				po.setKey(rs.getString(15));
				po.setLocation(rs.getString(16));
				po.setLink1(rs.getString(17));
				po.setLink2(rs.getString(18));
				po.setLink3(rs.getString(19));
				po.setLink4(rs.getString(20));
				po.setLink5(rs.getString(21));
				po.setLink6(rs.getString(22));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public List<trees> getdatacname() {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			String query = "select * from trees order by common_name";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				po.setPid(rs.getInt(1));
				po.setSname(rs.getString(2));
				po.setFamily(rs.getString(3));
				po.setCname(rs.getString(4));
				po.setVname(rs.getString(5));
				po.setHname(rs.getString(6));
				po.setTname(rs.getString(7));
				po.setPart(rs.getString(8));
				po.setUses(rs.getString(9));
				po.setPeriod(rs.getString(10));
				po.setRtype(rs.getString(11));
				po.setHabitat(rs.getString(12));
				po.setCat(rs.getString(13));
				po.setCcat(rs.getString(14));
				po.setKey(rs.getString(15));
				po.setLocation(rs.getString(16));
				po.setLink1(rs.getString(17));
				po.setLink2(rs.getString(18));
				po.setLink3(rs.getString(19));
				po.setLink4(rs.getString(20));
				po.setLink5(rs.getString(21));
				po.setLink6(rs.getString(22));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	
	public List<trees> getpart() {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			String query = "select distinct useful_part from trees where (useful_part not like '' and useful_part not like '%,%')";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				
				po.setPart(rs.getString(1));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public List<trees> getperiod() {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			/* String query = "select distinct flowering_period from trees"; */
			String query = "select distinct flowering_period from trees where (flowering_period not like '' and flowering_period not like '%,%')";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				
				po.setPeriod(rs.getString(1));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public List<trees> getrtype() {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			/* String query = "select distinct flowering_period from trees"; */
			String query = "select distinct root_type from trees where (root_type not like '' and root_type not like '%,%')";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				
				po.setRtype(rs.getString(1));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	

	public List<trees> getcat() {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			String query = "select distinct category from trees where category not like '%,%' or category not like '%;%' or not null";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				
				po.setCat(rs.getString(1));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public List<trees> getlocation() {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			String query = "select distinct location from trees where (location not like '' and location not like '%,%')";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				
				po.setLocation(rs.getString(1));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public List<trees> getccat() {
		List<trees> list = new ArrayList<trees>();
		trees po = null;
		try {
			String query = "select distinct child_cat from trees where child_cat not like '%,%' or child_cat not like '%;%' or child_cat not like ''";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new trees();
				
				po.setCcat(rs.getString(1));
				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	public trees getdatabyid(int id) {
		trees po = null;
		try {
			String query = "select * from trees where plant_id=? ";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				po = new trees();
				
				po.setPid(rs.getInt(1));
				po.setSname(rs.getString(2));
				po.setFamily(rs.getString(3));
				po.setCname(rs.getString(4));
				po.setVname(rs.getString(5));
				po.setHname(rs.getString(6));
				po.setTname(rs.getString(7));
				po.setPart(rs.getString(8));
				po.setUses(rs.getString(9));
				po.setPeriod(rs.getString(10));
				po.setRtype(rs.getString(11));
				po.setHabitat(rs.getString(12));
				po.setCat(rs.getString(13));
				po.setCcat(rs.getString(14));
				po.setKey(rs.getString(15));
				po.setLocation(rs.getString(16));
				po.setLink1(rs.getString(17));
				po.setLink2(rs.getString(18));
				po.setLink3(rs.getString(19));
				po.setLink4(rs.getString(20));
				po.setLink5(rs.getString(21));
				po.setLink6(rs.getString(22));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return po;
	}
	
	
	
	public boolean editrecord (trees user)
	{
		try {
			String query="update trees set scientific_name=?,family=?,common_name=?,vernacular_name=?,hindi_name=?,telugu_name=?,useful_part=?,uses=?,flowering_period=?,root_type=?,habitat=?,category=?,child_cat=?,key_characteristics=?,location=?,link1=?,link2=?,link3=?,link4=?,link5=?,link6=? where plant_id=?";
			PreparedStatement ps=conn.prepareStatement(query);
			
			ps.setString(1, user.getSname());
			ps.setString(2, user.getFamily());
			ps.setString(3, user.getCname());
			ps.setString(4, user.getVname());
			ps.setString(5, user.getHname());
			ps.setString(6, user.getTname());
			ps.setString(7, user.getPart());
			ps.setString(8, user.getUses());
			ps.setString(9, user.getPeriod());
			ps.setString(10, user.getRtype());
			ps.setString(11, user.getHabitat());
			ps.setString(12, user.getCat());
			ps.setString(13, user.getCcat());
			ps.setString(14, user.getKey());
			ps.setString(15, user.getLocation());
			ps.setString(16, user.getLink1());
			ps.setString(17, user.getLink2());
			ps.setString(18, user.getLink3());
			ps.setString(19, user.getLink4());
			ps.setString(20, user.getLink5());
			ps.setString(21, user.getLink6());
			ps.setInt(22, user.getPid());
			
			
			int i=ps.executeUpdate();
			if(i==1)
				return true;
			}
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	
		return false;
	}
	public boolean deleterecord (int pid)
	{
		try {
			String query="delete from trees where plant_id=?";
			PreparedStatement ps=conn.prepareStatement(query);
			
			ps.setInt(1,pid);
			int i=ps.executeUpdate();
			if(i==1)
				return true;
			}
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	
		return false;
	}



	
	
	
	
	
	
	

}
