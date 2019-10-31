package Store;
import java.sql.*;
import java.util.*;
public class Products extends Connect{
	public ArrayList<Product> getProducts(){
		ArrayList<Product> pList = new ArrayList<Product>();
		try{
			PreparedStatement stmt = conn.prepareStatement("Select * from products order by date_mod desc");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()){
				Product p = new Product();
				p.id = rs.getInt("id");
				p.title = rs.getString("title");
				p.desc = rs.getString("description");
				p.cost = rs.getDouble("cost");
				p.size = rs.getString("size");
				p.category = rs.getString("categor");
				p.gender = rs.getString("gender");
				p.quantity = rs.getInt("quantity");
				p.image = rs.getString("Img_url");
				p.manufacturer = rs.getString("manufacturer");
				pList.add(p);
				}
			}catch (SQLException e) {}
			return pList;
	}
	public void addProduct(String title,String desc,double cost,String size,int quantity,String img_url,String category, String gender,String manufacturer) {
		try{
		PreparedStatement stmt = conn.prepareStatement("INSERT INTO products VALUES(NULL,?,?,?,?,?,?,?,?,?,?)");
		stmt.setString(1, title);
		stmt.setString(2, desc);
		stmt.setDouble(3, cost);
		stmt.setString(4, size);
		stmt.setInt(5, quantity);
		stmt.setString(6, img_url);
		java.sql.Date dm = new java.sql.Date(Calendar.getInstance().getTime().getTime());
		stmt.setDate(7, dm);
		stmt.setString(8,category);
		stmt.setString(9, gender);
		stmt.setString(10, manufacturer);
		stmt.executeUpdate();
		}
		catch(Exception e) {}
	}
	public Product getProduct(int id){
		Product p = new Product();
		try{
			PreparedStatement stmt = conn.prepareStatement("Select * from products WHERE id="+id+"");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()){
				p.id = rs.getInt("id");
				p.title = rs.getString("title");
				p.desc = rs.getString("description");
				p.cost = rs.getDouble("cost");
				p.size = rs.getString("size");
				p.category = rs.getString("categor");
				p.gender = rs.getString("gender");
				p.quantity = rs.getInt("quantity");
				p.image = rs.getString("Img_url");
				p.manufacturer = rs.getString("manufacturer");
			}
		}
		catch (SQLException e) {}
		return p;
	}
	public void removeProduct(int id){
		try{
			PreparedStatement stmt = conn.prepareStatement("Delete from products where id="+id+"");
			int rs = stmt.executeUpdate();
		}
		catch(SQLException e){}
	}
	public void updateProduct(int id,String title,String desc,double cost,String size,int quantity,String category, String manufacturer) {
		try{
			String query = "update products set title = ?, description = ?, cost = ?, size = ?, quantity = ?,categor = ?, manufacturer = ?,date_mod=? where id = ?";
			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString(1, title);
			stmt.setString(2, desc);
			stmt.setDouble(3, cost);
			stmt.setString(4, size);
			stmt.setInt(5, quantity);
			stmt.setString(6,category);
			stmt.setString(7, manufacturer);
			java.sql.Date dm = new java.sql.Date(Calendar.getInstance().getTime().getTime());
		stmt.setDate(8, dm);
			stmt.setInt(9, id);
			int d = stmt.executeUpdate();
		}
		catch(Exception e) {}
	}
}