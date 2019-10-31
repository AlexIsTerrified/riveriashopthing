package Store;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Connect extends HttpServlet{

	protected static Connection conn = null;

  	public Connect() {
  		if(conn == null){
  			try {

   				Class.forName("com.mysql.cj.jdbc.Driver");

				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/store?autoReconnect=true&useSSL=false","user1","password");
    		}
			catch (Exception e) {
				System.out.println("Database connection error"+ e.getMessage());
			}
  		}

  	}


  public void closeConnection(){
  	try {
		conn.close();
	}
	catch (SQLException e) {	}

  }

}
