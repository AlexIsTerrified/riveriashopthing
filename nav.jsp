<nav class="upbar">
  <ul class="drop">
  <% 
	if((String)session.getAttribute("uname") != null){
		if(session.getAttribute("utype").equals("c")){
  %>
   <li class="dropmenu">
     <a id="dropbutton" href="http://www.gofugyourself.com" target="blank">
	 <div class="iconbg"></div>
	 Cart
	 </a>
    </li><% } }else{
		%>
	<li class="dropmenu">
	 <a id="dropbutton" href="./form.jsp">
	 Sign up
	 </a>
    </li>
		<%
	}
	%>
	<li class="dropmenu">
	 <a id="dropbutton" href="./Products.jsp">
	 Product
	 </a>
	  <ul>
	  <a href="./Products.jsp?s=m">
	  <div> MEN </div>
	 </a>
	 <a href="./Products.jsp?s=f">
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
	 <div class="nameft">RIVERIA</div>
	</a>
  </ul>
  </nav>