package com.payment;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    

	
	
	public static  List<User> validate(String name, String email) {
		
           ArrayList<User> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where name='"+name+"' and email='"+email+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int id = rs.getInt(1);
				String name1 = rs.getString(2);
				String email1 = rs.getString(3);
				String phone = rs.getString(4);
				String packages = rs.getString(5);
				
				String amount = rs.getString(6);
				String method = rs.getString(7);
				
				User c = new User(id,name1,email1,phone,packages,amount,method);
				cus.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return cus;
	}
	
	
    
    public static boolean insertcustomer(String name, String email, String phone,String packages,String amount,String method) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into payment values (0,'"+name+"','"+email+"','"+phone+"','"+packages+"','"+amount+"','"+method+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatecustomer(String id, String name, String email, String phone,String packages,String amount,String method) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update payment set name='"+name+"',email='"+email+"',phone='"+phone+"',packages='"+packages+"',amount='"+amount+"',method='"+method+"' "
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<User> getCustomerDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<User> cus = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from payment where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name1 = rs.getString(2);
				String email1 = rs.getString(3);
				String phone = rs.getString(4);
				String packages = rs.getString(5);
				
				String amount = rs.getString(6);
				String method = rs.getString(7);
				
				User c = new User(id,name1,email1,phone,packages,amount,method);
				cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
    
    public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from payment where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
