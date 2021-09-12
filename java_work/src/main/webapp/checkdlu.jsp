<%@ page language="java" import="java.util.*,java.sql.*,java.net.*,java.lang.*" contentType="text/html; charset=UTF-8"%>
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
    <%      //接收用户名和密码  
            String driverClass ="com.mysql.cj.jdbc.Driver" ;
            String url = "jdbc:mysql://localhost:3306/javaa";
            String username = "root";
            String password = "yao123456.";
            Connection conn=null;
    		Statement stmt=null;
    		ResultSet rs=null,ra=null;
    		
    		//接下来的操作需要抛出异常
    		try {
    			//2.加载JDBC驱动"driver"，注册到DriverManager中
    			Class.forName(driverClass);
    			//3.建立数据库连接，取得Connection对象"conn"
    			conn= DriverManager.getConnection(url, username, password);
    			//4.建立Statement对象/PreparedStatement对象"stmt"
    			stmt=conn.createStatement();
    			//5.执行SQL语句
    			 String usern=session.getAttribute("usaer").toString();
                String passw=session.getAttribute("pasdd").toString();

                //6.访问结果集ResultSet对象"rs"
                rs=stmt.executeQuery("select * from 学生 where 学号='" + usern + "' and 密码='" + passw + "'");
                boolean eo=rs.next();
                if(!eo)
                {
                	%>
                	<h1 style="font-family:arial;color:red;font-size:70px; ">用户名或密码错误！</h1>
                	 <a href="dlu.jsp">返回</a> <%   
                }
                else
                {
                	 response.sendRedirect("index.html");
                }
    			//7.依次关闭 rs , stmt ,conn
    			rs.close();
    			stmt.close();
    			conn.close();

    		}catch(Exception e) {
    			System.out.println("Exception:"+e.getMessage());
    		} 
     %>


  </body>
</html>