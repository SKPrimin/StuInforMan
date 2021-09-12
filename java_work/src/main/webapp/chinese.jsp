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
    

                rs=stmt.executeQuery("select 学号,姓名,语文 from 成绩系统 where 学号='" + usern + "'");
                //6.访问结果集ResultSet对象"rs"


                %>

                <p style="font-family:arial;color:blue;font-size:50px;">您的信息为：</p>
                <%
    			while(rs.next()) {
    				{%>

    				<table border="1">
    				    <tr>
    				        <td>学号</td>
    				        <td><%out.println(rs.getString(1));%></td>
    				    </tr>

    				    <tr>
    				        <td> 姓名</td>
    				        <td><%out.println(rs.getString(2));%></td>
    				    </tr>
    				    
    				        				    <tr>
    				        <td> 语文</td>
    				        <td><%out.println(rs.getString(3));%></td>
    				    </tr>
    				    
    				<%}
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