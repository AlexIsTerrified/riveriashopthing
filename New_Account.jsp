<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="header nav.css">
<title>RIVERIA FASHION - PAYMENT</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="formstyle.css">
<Script src="https://code.jquery.com/jquery-3.2.1.js"></script>
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
</script>
</head>
<body>
<nav class="upbar">
  <ul class="drop">
   <li class="dropmenu">
     <a id="dropbutton" href="http://www.gofugyourself.com" target="blank">
	 Blog
	 </a>
    </li>
	<li class="dropdown">
	</li>
	<li class="dropmenu">
	 <a id="dropbutton">
	 Product
	 </a>
	  <ul>
	  <a href="./men.jsp">
	  <div> MEN </div>
	 </a>
	 <a href="./women.jsp">
	 <div> WOMEN </div>
	 </a>
	 </ul>
    </li>
	<li class="dropmenu">
	 <a id="dropbutton" href="./about.jsp">
	 About
	 </a>
    </li>
	<li class="dropmenu">
	 <a id="dropbutton" href="index.jsp">
	 Home
	 </a>
    </li>
	<a class="icon" href="?">
	 <div class="iconbg"></div>
	 <div class="nameft">R.F</div>
	</a>
  </ul>
  </nav>
<div class="wrap">
<form class="signup-form" style="height:400px">
<center>
<h2> ACCOUNT CREATED SUCCESSFULLY </h2>
<a href="./index.jsp">HOME</a>
</form>
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
	  <p>Rivera Fashion Store+</p>
	 </div>
	</section>
</body>
</html>