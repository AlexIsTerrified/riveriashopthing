<%@page import="Store.*,java.util.*,java.io.*"%>
<%

		if(request.getParameter("username") != null && request.getParameter("password") != null){
		String	name = request.getParameter("username");
		String password = request.getParameter("password");	
		User u = new User();
		String utype = u.checkType(name);
		if(u.checkUser(name) && u.checkpass(name,password)){
			session.setAttribute("uname",name);
			session.setAttribute("utype",utype);
			
%>Logging in
<jsp:forward page="index.jsp"></jsp:forward>
<%
			}else{%><jsp:forward page="index.jsp?excep=fail"></jsp:forward> <%}
%> 
<%
		}else{%><jsp:forward page="index.jsp?excep=fail"></jsp:forward> <%}
%>