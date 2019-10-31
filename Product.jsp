<!DOCTYPE html>
<%@page import="Store.*,java.util.*,java.io.*"%>
<html>
<head>
<title>RIVERIA FASHION - PRODUCT CREATION</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="formstyle.css">
<script>
	function cof(){
var r = confirm("Are you sure you'd like to update this product?");
if (r == true) {
	alert("Product updated");
  return true;
  
} else {
  return false;
}
	}
</script>
</head>
<body style="background:#eeeeeed4;height:100%;overflow:hidden;">
<div class="wrap" style="width:100%;height:100%;margin:0;display: flex;">
<%
	
%>
<%
	User user = new User();
	Products p = new Products();
	String name = (String)session.getAttribute("uname");
	String utype = user.checkType(name);
	if(request.getParameter("fid") != null){
		if(session.getAttribute("utype").equals("a") || session.getAttribute("utype").equals("e")){
		int f = Integer.parseInt(request.getParameter("fid"));
		p.removeProduct(f);
		%>
		<h2>Product removed</h2>
		<%
		}
	}if(request.getParameter("eid") != null){
		if(session.getAttribute("utype").equals("a") || session.getAttribute("utype").equals("e")){
			int f = Integer.parseInt(request.getParameter("eid"));
			String pname = (String) request.getParameter("title");
			String psize = (String) request.getParameter("size");
			double price = Double.parseDouble((String)request.getParameter("cost"));
			String categ = (String) request.getParameter("categ");
			int amount = Integer.parseInt((String)request.getParameter("quantity"));
			String manu = (String) request.getParameter("manu");
			String descrip = (String) request.getParameter("desc");
		p.updateProduct(f,pname,descrip,price,psize,amount,categ,manu);
		response.sendRedirect("./Product.jsp?id="+request.getParameter("eid"));
		}
	}else{
		int pID = Integer.parseInt((String)request.getParameter("id"));
	if(pID >0){
		
		Product p1 = p.getProduct(pID);
	%>
<section class="product-view">
<img src="./image/<% out.print(p1.title); %>.jpg"><br>
</section>
<section class="product-dets">

<%
if(session.getAttribute("utype") != null){
if(session.getAttribute("utype").equals("a") || session.getAttribute("utype").equals("e")){
	%>
		<form class="signup-form" action="Product.jsp" method="get">
		<b>TITLE</b><br>
			<input type="text" name="title" value="<% out.print(p1.title); %>" required><br>
			<b>DESCRIPTION</b><br>
			<input type="text" name="desc" value="<% out.print(p1.desc); %>"required><br>
			<b>MANUFACTURER</b><br>
			<input type="text" name="manu" value="<% out.print(p1.manufacturer); %>" required><br>
			<Table>
			<tr>
			<td>
			<b>SIZE</b>
			<input type="text" name="size" value="<% out.print(p1.size); %>" required>
			</td>
			<td>
			<b>CATEGORY</b>
			<input type="text" name="categ" value="<% out.print(p1.category); %>" required>
			</td>
			</tr>
			</table><br>
			<table>
			<tr>
			<td>
				<b>COST</b>
			<input type="text" name="cost" value="<% out.print(p1.cost); %>" required>
			</td>
			<td>
			<b>STOCK</b>
			<input type="text" name="quantity" value="<% out.print(p1.quantity); %>" required>
			</td>
			</tr>
			</table>
	<button type="submit" name="eid" value="<% out.print(pID); %>" id="submit" style="width:40%" onclick="return cof();">Update Product</button>
	
	<button type="submit" name="fid" value="<% out.print(pID); %>" id="submit" style="width:40%" onclick="return cof();">Remove Product</button>
		
	</form>
	<% 	}else if(session.getAttribute("utype").equals("c")){
		%>
		<Div class="signup-form" style="height:500px">
		<h2><% out.print(p1.title);%></h2><br>
			<b>DESCRIPTION</b><br>
			<p><% out.print(p1.desc); %></p><br>
			<b>MANUFACTURER</b><br>
			<p><% out.print(p1.manufacturer); %></p><br>
			<Table>
			<tr>
			<td>
			<b>SIZE</b>
			<p><% out.print(p1.size); %></p>
			</td>
			<td>
			<b>GENDER</b>
	<p><%if(p1.gender.equals("m")){ out.print("Men");} else if(p1.gender.equals("f")){out.print("Women");} else{out.print("Unisex");}%></p>
			</td>
			<td>
			<b>CATEGORY</b>
			<p><% out.print(p1.category); %></p>
			</td>
			</tr>
			</table><br>
			<b>COST</b>
			<p>$<% out.print(p1.cost); %></p>
			<br>
			<b>STOCK</b>
			<p><% out.print(p1.quantity); %></p>
			</form>
			
		<%
	}
	}else{
		%>
		<div class="signup-form" style="height:500px">
		<h2><% out.print(p1.title);%></h2><br>
		<b>DESCRIPTION</b><br>
			<p><% out.print(p1.desc); %></p><br>
			<b>MANUFACTURER</b><br>
			<p><% out.print(p1.manufacturer); %></p><br>
			<Table>
			<tr>
			<td>
			<b>SIZE</b>
			<p><% out.print(p1.size); %></p>
			</td>
			<td>
			<b>GENDER</b>
	<p><%if(p1.gender.equals("m")){ out.print("Men");} else if(p1.gender.equals("f")){out.print("Women");} else{out.print("Unisex");}%></p>
			</td>
			<td>
			<b>CATEGORY</b>
			<p><% out.print(p1.category); %></p>
			</td>
			</tr>
			</table><br>
			<b>COST</b>
			<p>$<% out.print(p1.cost); %></p>
			<br>
			<b>STOCK</b>
			<p><% out.print(p1.quantity); %></p>

			</div>
		<%
	}
	%>
</section>
<% 
	
	}else{
		out.print("error");
	}
	}
%>
</div>
</body>