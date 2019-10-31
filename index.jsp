<%@page import="Store.*,java.util.*,java.io.*"%>
<html>
<head>
<link type="text/css" rel="stylesheet" href="header nav.css">
<title>REVERIA FASHION</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="shortcut icon" type="image/x-icon" href="./img/images.jpg">
<Script src="jquery-3.2.1.js"></script>
<script type="text/javascript">
 $(window).on('scroll',function(){
	 if($(window).scrollTop()){
		 $('nav').addClass('black');
		 $('.dropmenu').addClass('droptext');
		 $('.icon').addClass('iconb');
	 }else{
		 $('nav').removeClass('black');
		 $('.dropmenu').removeClass('droptext');
		 $('.icon').removeClass('iconb');
	 }
 })
function tht(){
	$('.popup').addClass('popon');
}
function tht1(){
	$('.popup').addClass('popon1');
}
function tho(){
	$('.popup').removeClass('popon');
	$('.popup').removeClass('popon1');
}
</script>
</head>
<body>
<%@include file="nav.jsp" %>
 <div class="head">
	<section class="signup" style="background:url('img/head1.jpg') fixed center;">
	<div class="titly">
	 <h2>Welcome to</h2>
	 <h1>RIVERIA FASHION - HOME</h1>
	 <p> Home To The Latest Fashion Trends Around The Globe.</p><br>
	 <p>Riveria Fashion Store is the number place to find the latest and trending clothes on the internet.</p>
	</div>
	<%@include file="user-info.jsp" %>
	</section>
	<center><h1>LATEST PRODUCTS IN STOCK</h1></center>
		<div class="photo" style="height:400px">
		<%
			Products p = new Products();
			ArrayList<Product> list = p.getProducts();
			for(int i=0; i<5; i++){
				Product plist = list.get(i);
				%>
	<a onclick="tht1()" href="Product.jsp?id=<% out.print(plist.id); %>" target="popy" title="<% out.print(plist.title); %>">
	<div>
	<img src="./image/<% out.print(plist.title); %>.jpg" class="each"><img>
	<h3><p><%out.print(plist.title);%></p></h3>
	</div>
	</a>
				<%
			}
		%>
		</div>
	<div class="optionset">
	<a href="./Products.jsp?s=m">
	 <div class="Men">
	 <div class="optioncategory">
	 <h2>MEN<h2>
		<div class="categories">
			<a href="./Products.jsp?s=m&c=shirt">Shirts</a><br>
			<a href="./Products.jsp?s=m&c=pants">Pants</a><br>
			<a href="./Products.jsp?s=m&c=hoodies">Hoodies</a><br>
		</div>
	 </div>
	 </div>
	 </a>
	 <a href="./Products.jsp?s=f">
	 <div class="Women">
	 <div class="optioncategory">
	 <h2>WOMEN<h2>
	 <div class="categories">
			<a href="./Products.jsp?s=f&c=skirt">Skirts</a><br>
			<a href="./Products.jsp?s=f&c=dress">Dresses</a><br>
			<a href="./Products.jsp?s=f&c=hoodies">Hoodies</a><br>
		</div>
	 </div>
	 </div>
	 </a>
	</div>
	<section class="footer">
	 <table>
	 <tr>
	 <th>CONTACT US</th>
	 </tr>
	 <tr>
	 <td>
	  <a href="http://www.facebook.com">Facebook</a>
		</td>
	 </tr>
	 <tr>
	 <td>
	  <a href="http://www.twitter.com">Twitter</a>
	</td>	  
	 </tr>
	 <tr>
	 <td>
	  <a href="http://www.isntagram.com">Instagram</a></td>	  
	 </tr>
	 <tr>
	 <td>
	  <a href="http://www.google.com">Gmail</a>	  
	  </td>
	 </tr>
 	 </table>
	 	 <table>
	 <tr>
	 <th>PAGES</th>
	 </tr>
	 <tr>
	 <td>
	  <a href="./index.html">Home</a>
		</td>
	 </tr>
	 <tr>
	 <td>
	  <a href="./about.html">About</a>
	</td>	  
	 </tr>
	 <tr>
	 <td>
	  <a href="./men.html">Men's Products</a></td>	  
	 </tr>
	 <tr>
	 <td>
	  <a href="./women.html">Women's Products</a>	  
	  </td>
	 </tr>
	 <tr>
	 <td>
	  <a href="http://www.gofugyourself.com" target="blank">Blog</a>	  
	  </td>
	 </tr>
	 </table>
	 <div class="newslet">
	 <p>Subscribe to our newsletter</p>
	 <form>
	  <input type="text" id="text" style="width:200px">
	  <button type="submit" id="search">Subscribe</button>
	  </form>
	  <div class="iconbg"></div>
	  <p>Riveria Fashion Store+</p>
	 </div>
	</section>
 </div>
 <div class="popup">
    <a name="popup" ><div onclick="tho()"></div></a>
	<div class="show">
	<iframe name="popy" style="width: 100%;height: 100%;margin:0;border:none"></iframe>
	</div>
 </div>
</body>