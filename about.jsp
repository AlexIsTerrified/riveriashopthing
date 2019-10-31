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
	<section class="signup" style="background:url('img/head3.jpg') fixed center;">
	<div class="titly">
	 <h2>Welcome to</h2>
	 <h1>RIVERIA FASHION - About</h1>
	 <p>Riveria Fashion Store is the number place to find the latest and trending clothes on the internet.</p>
	</div>
	<%@include file="user-info.jsp" %>
	</section>
	<section class="About">
	 <center><h1>About Us</h1><br>
<p >We at the RIVERIA FASHION™ understand the needs of our people. We are passionate about opening a new world of shopping experience to our consumers. With just the click of a button, our customers now have access to a global shopping market place that have been denied them for far too long. 
RIVERIA FASHION is the ultimate one-stop-shop for the modern yet economical trends in fashion.</p><br>
<p >Share with your friends, follow us on <a target="blank" href="http://www.facebook.com">FACEBOOK</a> | <a target="blank" href="http://www.twitter.com">TWITTER</a> | <a target="blank" href="http://www.instagram.com">INSTAGRAM</a> for promotions, events and updates.</p>

	
	 <h1>Contact Us</h1><br>
<p >Customer Care is here to help. To inquire about the products and services found on our Website, or if you have questions regarding your order, please contact us by e-mail or telephone. We are happy to assist you Mon-Fri, 9am-5pm Eastern standard time. The information you provide will be handled according to our Privacy Policy.</p>
<br><p>You can contact us at the following :
	<div class="contactiboi">
	<a><img src="./img/fb.png"></img></a>
	<a><img src="./img/t.png"></img></a>
	<a><img src="./img/e.png"></img></a>
	</div>
	 </section>
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
	  <p>Rivera Fashion Store+</p>
	 </div>
	</section>
	</body>
</html>