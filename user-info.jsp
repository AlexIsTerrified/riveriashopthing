<section class="logon">
	<%  
	if((String)session.getAttribute("uname") == null){
		if(request.getParameter("excep") !=null && request.getParameter("excep").equals("fail")){
			%> <p class="error">Login Failed</p>
			<%
		}
	%>
	<form action="./login.jsp" method="POST">
	 <input type="text" id="username" placeholder="USERNAME" name="username"></input><br>
	 <input type="password" id="password" placeholder="PASSWORD" name="password"></input>
	 <button type="submit" id="submit">LOGIN</button>
	 </form>
	 <div class="divider"></div>
		 <form class="signboi" action="form.jsp" method="POST">
	 <input required type="text" id="username" placeholder="USERNAME" name="username1"></input><br>
	 <input required type="text" id="username" placeholder="EMAIL" name="email"></input><br>
	 <input required type="password" id="Password" placeholder="PASSWORD" name="password1"></input><br>
	 <button type="submit" id="submit">SIGN UP</button>
	 <%
		} else{
			User u = new User();
		String name = (String)session.getAttribute("uname");
		String t = (String)session.getAttribute("utype");
		
		String flname = u.checkName(name);
		if(t.equals("a")){
			%>
			<div class="logout-button"><div class="fname"><h2 class="user-name"><% out.print(flname); %></h2></div><a>@<% out.print(name); %></a><br><br>
			<div class="user-dets">
			 		<a><p><% out.print(u.checkEmail(name));%><p></a><br>
			 <p><% out.print(u.checkAddress(name));%></p><br>
			 <p><% out.print(u.checkDob(name));%><p><br><br>
			</div>
			<a href="logout.jsp"><button type="submit" id="submit" style="margin-bottom:40px">LOGOUT</button></a><br></div>
			<a href="Product_Creation.jsp" target="popy" onclick="tht()"><button type="submit" id="submit" class="uoptions" style="margin:20px 30% 20px 10%;">Insert Product</button></a>
			<a href="Employee_creation.jsp"><button type="submit" id="submit" class="uoptions" style="margin:20px 30% 20px 10%;">Create User</button></a><br>
		<%
		}else if(t.equals("e")){
		%>
		<div class="logout-button"><div class="fname"><h2 class="user-name"><% out.print(flname); %></h2></div><a>@<% out.print(name); %></a><br><br>
			<div class="user-dets">
			 		<a><p><% out.print(u.checkEmail(name));%><p></a><br>
			 <p><% out.print(u.checkAddress(name));%></p><br>
			 <p><% out.print(u.checkDob(name));%><p><br><br>
			</div>
			<a href="logout.jsp"><button type="submit" id="submit" style="margin-bottom:40px">LOGOUT</button></a><br></div>
			<a href="Product_Creation.jsp" target="popy" onclick="tht()"><button type="submit" id="submit" class="uoptions" style="margin:20px 30% 20px 10%;">Insert Product</button></a>
		<%
		}else if(t.equals("c")){
		%>
		<div class="logout-button"><div class="fname"><h2 class="user-name"><% out.print(flname); %></h2></div><a>@<% out.print(name); %></a><br><br>
			<div class="user-dets">
			 		<a><p><% out.print(u.checkEmail(name));%><p></a><br>
			 <p><% out.print(u.checkAddress(name));%></p><br>
			 <p><% out.print(u.checkDob(name));%><p><br><br>
			</div>
			<a href="logout.jsp"><button type="submit" id="submit" style="margin-bottom:40px">LOGOUT</button></a><br></div>
		<%
		}
		%>
	<%
		}
	 %>
	 </form>
	</section>