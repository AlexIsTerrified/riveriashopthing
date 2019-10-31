package Store;
import java.util.*;
import java.sql.*;
public class Creditcard extends Connect{
	public Creditcard() {}
public void addCard(String acc_name, int y,int d,int m, int pin , int zip_code, String CC_type,String username) {
		try{
		PreparedStatement stmt = conn.prepareStatement("INSERT INTO creditcard VALUES(NULL,?,?,?,?,?,?)");
		stmt.setString(1, acc_name);
		Calendar cal = Calendar.getInstance();
		cal.set(y,m,d);
		java.sql.Date exd = java.sql.Date.valueOf(cal.get(cal.YEAR) + "-" + cal.get(cal.MONTH) + "-" + cal.get(cal.DATE) );
		stmt.setDate(2,exd);
		stmt.setInt(3, pin);
		stmt.setInt(4, zip_code);
		stmt.setString(5,CC_type );
		stmt.setString(6, username);
		stmt.executeUpdate();
		}
		catch(Exception e) {}
	}
	public void updateCard(String acc_name, int y,int d,int m, int pin , int zip_code, String CC_type,String username) {
		try{
		PreparedStatement stmt = conn.prepareStatement("UPDATE products SET acc_name = ?, exp_date = ?, pin = ?, zip_code = ?, CC_type = ?, WHERE username=?");
		stmt.setString(1, acc_name);
		Calendar cal = Calendar.getInstance();
		cal.set(y,m,d);
		java.sql.Date exd = java.sql.Date.valueOf(cal.get(cal.YEAR) + "-" + cal.get(cal.MONTH) + "-" + cal.get(cal.DATE) );
		stmt.setDate(2,exd);
		stmt.setInt(3, pin);
		stmt.setInt(4, zip_code);
		stmt.setString(5,CC_type );
		stmt.setString(6, username);
		stmt.executeUpdate();
		}
		catch(Exception e) {}
	}


}