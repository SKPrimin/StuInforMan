<%@ page language="java" import="java.util.*,java.sql.*,java.net.*,java.lang.*"
 contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Feilong_loginCh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  <body>
    <%     
    String usern=request.getParameter("username");
    String passw = request.getParameter("psdword");
     session.setAttribute("usaer", usern);
     session.setAttribute("pasdd", passw);
     String status=request.getParameter("user");
     if(status.equals("user"))
     {
  	   response.sendRedirect("checkdlu.jsp");
     }
     else
     {
  	   response.sendRedirect("checkdlm.jsp");
     }
     %>

  </body>
</html>