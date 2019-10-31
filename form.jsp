<%@page import="Store.*"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="header nav.css">
<title>RIVERIA FASHION - SIGN UP</title>
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
<%@include file="nav.jsp" %>
<div class="wrap">
	<form name ="sign" class="signup-form" action="form.jsp" method="POST" >
	<%
		String nam = request.getParameter("username1");
		String email = request.getParameter("email");
		String pass = request.getParameter("password1");
	%>
	
		<%
		nam = request.getParameter("username1");
		email = request.getParameter("email");
		pass = request.getParameter("password1");
		String pass2 = request.getParameter("password2");
		String firstname = request.getParameter("First-Name");
		String lastname = request.getParameter("Last-Name");
		String Address = request.getParameter("Address");
		String Contact = request.getParameter("Contact");
		String g = request.getParameter("gender");
		
		
		if(firstname != null && lastname != null && email != null && pass!=null){
		int d = Integer.parseInt(request.getParameter("Day"));
		int m = Integer.parseInt(request.getParameter("Month"));
		int y = Integer.parseInt(request.getParameter("Year"));
		User u = new User();
		if(u.checkUser(nam)){%>
		<p class="error">USER ALREADY EXSIT</p>
		<%
		nam = null;
		pass = null;
		email = null;}else{
		u.addUser(nam,firstname,lastname,email,"c",pass,Address,Contact,g,y,d,m);	
	if(request.getParameter("username1") != null && request.getParameter("password1") != null){
		String	name = request.getParameter("username1");	
		String	password = request.getParameter("password");
		String utype = u.checkType(name);
		if(!u.checkUser(nam)){
			if(pass.equals(pass2)){
				if(email.contains("@") && email.endsWith(".com")){
		u.addUser(nam,firstname,lastname,email,"c",pass,Address,Contact,g,y,d,m);
		%>
		<jsp:forward page="New_Account.jsp"/>
		<%
			}else{
				%><p class="error">EMAIL IS NOT VALID</p><%
			}
			}else{
				%><p class="error">PASSWORDS DON'T MATCH</p><%
			}
		}else{
			%><p class="error">USER ALREADY EXIST</p><%
		}
	}
		
		%>
		<jsp:forward page="New_Account.jsp"></jsp:forward>
		<%
		}
		}
	%>
	<h2> SIGN UP </h2>
	 <input required type="text" value="<%if(nam!=null) out.print(nam);%>" placeholder="USERNAME *must be 8 or more characters*" name="username1" required></input><br>
	 <input required type="text" value="<%if(email!=null)  out.print(email);%>" placeholder="EMAIL" name="email" required></input><br>
	 <input required type="password" id="password" value="<%if(pass!=null) out.print(pass);%>" placeholder="PASSWORD" name="password1" required></input><br>
	 <input required type="password" id="password" value="" placeholder="RE-TYPE PASSWORD" name="password2" required></input>
	<input type="Text" name="First-Name" placeholder="FIRST NAME" required><br>
	<input type="Text" name="Last-Name" placeholder="LAST NAME" required><br>
	<input type="Text" name="Address" placeholder="ADDRESS" required><br>
	<input type="Text" name="Contact" placeholder="CONTACT" required><br>
<span style="font size:12px;">DATE OF BIRTH </span>
<br>
<select name="Month" required>
<option>Month</option>
	<option value="1">January</option>
	<option value="2">February</option>
	<option value="3">March</option>
	<option value="4">April</option>
	<option value="5">May</option>
	<option value="6">June</option>
	<option value="7">July</option>
	<option value="8">August</option>
	<option value="9">September</option>
	<option value="10">October</option>
	<option value="11">November</option>
	<option value="12">December</option>
	</select>
	
	<select name="Day" required>
<option>Day</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>
	<option value="22">22</option>
	<option value="23">23</option>
	<option value="24">24</option>
	<option value="25">25</option>
	<option value="26">26</option>
	<option value="27">27</option>
	<option value="28">28</option>
	<option value="29">29</option>
	<option value="30">30</option>
	<option value="31">31</option>
	<option value="32">32</option>
	</select>
	
	<select name="Year" required>
<option>Year</option>
	<option value="1980">1980</option>
	<option value="1981">1981</option>
	<option value="1982">1982</option>
	<option value="1983">1984</option>
	<option value="1985">1985</option>
	<option value="1986">1986</option>
	<option value="1987">1987</option>
	<option value="1988">1988</option>
	<option value="1989">1989</option>
	<option value="1990">1990</option>
	<option value="1991">1991</option>
	<option value="1992">1992</option>
	<option value="1993">1993</option>
	<option value="1994">1994</option>
	<option value="1995">1995</option>
	<option value="1996">1996</option>
	<option value="1997">1997</option>
	<option value="1998">1998</option>
	<option value="1999">1999</option>
	<option value="2000">2000</option>
	<option value="2001">2001</option>
	</select>
	<br>
	<br>
	<span style="font size:12px;">GENDER</span>
	<br>
	<input type="radio" name="gender" value="m" required>Male
	<input type="radio" name="gender" value="f" required>Female
	<input type="radio" name="gender" value="o" required>Other
	<br>
	<br>
	<input type="checkbox">I Agree To the <a href="terms.html" style="text-decoration:underline" required>Terms Of Use And Service</a> 
	<br>
	<br>
	<input type="submit" value="Submit" id="submit" onclick="return val();"/>
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