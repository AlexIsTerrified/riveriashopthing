package Store;
import java.util.*;
import java.sql.*;
public class User extends Connect{
	public User() {}
public void addUser(String uname,String fname,String lname,String email,String t,String pass,String address,String contact,String gender,int y,int d,int m) {
		try{
		PreparedStatement stmt = conn.prepareStatement("INSERT INTO users VALUES(NULL,?,?,?,?,?,?,?,?,?,?)");
		stmt.setString(1, uname);
		stmt.setString(2, fname);
		stmt.setString(3, lname);
		stmt.setString(4, pass);
		Calendar cal = Calendar.getInstance();
		cal.set(y,m,d);
		java.sql.Date db = java.sql.Date.valueOf(cal.get(cal.YEAR) + "-" + cal.get(cal.MONTH) + "-" + cal.get(cal.DATE) );
		stmt.setDate(5,db);
		stmt.setString(6, address);
		stmt.setString(7, contact);
		stmt.setString(8, email);
		stmt.setString(9, gender);
		stmt.setString(10, t);
		stmt.executeUpdate();
		}
		catch(Exception e) {}
	}
public boolean checkUser(String user){
		boolean b = false;
		try{
		PreparedStatement stmt = conn.prepareStatement("SELECT username from users WHERE username=?");
		stmt.setString(1,user);
		ResultSet rs= stmt.executeQuery();
		if(rs.next()){

			if(rs.getString("username") != user){
				b= true;
			}
			}else{}
			}catch(Exception e) {
			}
			return b;
	}
public boolean checkpass(String user,String pass){
	boolean b=false;
	try{
	PreparedStatement stmt = conn.prepareStatement("SELECT password from users WHERE username='"+user+"'");
	ResultSet rs= stmt.executeQuery();
		if(rs.next()){
			String p = rs.getString("password");
			if(p.equals(pass)){
				b = true;
			}
			}else{}
		}catch(Exception e) {}
			return b;
}
public String checkType(String user){
	String t = null;
	try{
	PreparedStatement stmt = conn.prepareStatement("SELECT accounttype from users WHERE username='"+user+"'");
	ResultSet rs= stmt.executeQuery();
		if(rs.next()){
			 t = rs.getString("accounttype");
			}else{}
		}catch(Exception e) {}
		return t;
}
public String checkName(String user){
	String t = null;
	try{
	PreparedStatement stmt = conn.prepareStatement("SELECT * from users WHERE username='"+user+"'");
	ResultSet rs= stmt.executeQuery();
		if(rs.next()){
			 t = rs.getString("First_name")+" "+rs.getString("Last_name");
			}else{}
		}catch(Exception e) {}
		return t;
}
public String checkEmail(String user){
	String t = null;
	try{
	PreparedStatement stmt = conn.prepareStatement("SELECT * from users WHERE username='"+user+"'");
	ResultSet rs= stmt.executeQuery();
		if(rs.next()){
			 t = rs.getString("Email");
			}else{}
		}catch(Exception e) {}
		return t;
}
public String checkAddress(String user){
	String t = null;
	try{
	PreparedStatement stmt = conn.prepareStatement("SELECT * from users WHERE username='"+user+"'");
	ResultSet rs= stmt.executeQuery();
		if(rs.next()){
			 t = rs.getString("address");
			}else{}
		}catch(Exception e) {}
		return t;
}
public String checkDob(String user){
	String t = null;
	try{
	PreparedStatement stmt = conn.prepareStatement("SELECT * from users WHERE username='"+user+"'");
	ResultSet rs= stmt.executeQuery();
		if(rs.next()){
			 t = rs.getString("dob");
			}else{}
		}catch(Exception e) {}
		return t;
}

}
