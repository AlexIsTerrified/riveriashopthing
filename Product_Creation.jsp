<!DOCTYPE html>
<%@page import="Store.*,java.util.*,java.io.*"%>
<html>
<head>
<link type="text/css" rel="stylesheet" href="header nav.css">
<title>RIVERIA FASHION - PRODUCT CREATION</title>
<link rel="stylesheet" type="text/css" href="formstyle.css">
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body style="background:#eeeeeed4;">
<div class="wrap" style="width:100%;height:100%;overflow:hidden;margin:0">
	<form class="signup-form" method="post" action="Product_Creation.jsp"  style="background:none;border:none;box-shadow:none">
	<%
	User user = new User();
	String name = (String)session.getAttribute("uname");
	String utype = user.checkType(name);
	if(utype!=null){
	   if(utype.equals("a") || utype.equals("e")){
		   if(request.getParameter("Product_name") != null){
			   out.print("Product inserted!");
			String pname = (String) request.getParameter("Product_name");
			String psize = (String) request.getParameter("Psize");
			double price = Double.parseDouble((String)request.getParameter("Price"));
			String gender = (String) request.getParameter("gender");
			String categ = (String) request.getParameter("categ");
			int amount = Integer.parseInt((String)request.getParameter("Amount"));
			String manu = (String) request.getParameter("Manu");
			String descrip = (String) request.getParameter("Descrip");
			
		
				Products p = new Products();
				p.addProduct(pname,descrip,price,psize,amount,"./image/"+pname+".jpg",categ,gender,manu);
		}
	}
	}
	%>
	<h2 class="h2idk"> PRODUCT CREATION </h2>
	<input required type="Text" name="Product_name" placeholder="Product Name">
	<br>
	<select name="Psize" required>
<option>Product Size</option>
	<option value="Xsmall">Extra small</option>
	<option value="small">Small</option>
	<option value="Medium">Medium</option>
	<option value="Large">Large</option>
	<option value="Extra Large">Extra Large</option>
	</select>
	<br>
	<input required type="Text" name="Price" placeholder="Price">
	<br>
		<span style="font size:12px;">GENDER</span>
	<br>
	<input type="radio" name="gender" value="m">Male
	<input type="radio" name="gender" value="f">Female
	<input type="radio" name="gender" value="o">Other
	<br>
	<input required type="Text" name="categ" placeholder="Category"><br>
	<input required type="Text" name="Amount" placeholder="Amount in Stock"><br>
	<input required type="Text" name="Manu" placeholder="Manufacturer">
	<br>
	<input required type="text" name="Descrip" style="height:80px" placeholder="Description"><br>
	<input type="file" name="file" accept="image/x-png,image/gif,image/jpeg">
	<input type="submit" value="Submit" id="submit">
	</form>
</div>
</body>
</html>