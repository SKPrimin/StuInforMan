<%--
  Created by IntelliJ IDEA.
  User: SKPrimin
  Date: 2021/6/30
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%@page import="java.sql.*,java.util.*,java.net.*,java.lang.*"%>
    <%! String username;
    String stu_name;
    String stu_password;
    String stu_grade;
    %>

<%
    try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection connect = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/javauser?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone = GMT",
            "root", "root");
//test为数据库名，root为用户名，password为密码，需根据实际情况进行修改。
    if(connect != null){
        out.print("数据库连接成功！");

        Statement stmt = connect.createStatement();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String grade = request.getParameter("RadioButtonList1");

        ResultSet rs = stmt.executeQuery("select * from stu_log where stu_name = '"+username+"'");
        out.print(rs);
        while (rs.next()) {
            stu_name = rs.getString("stu_name");
            stu_password = rs.getString("stu_password");
            stu_grade = rs.getString("stu_grade");
            out.print(stu_name + " " + stu_password + " " + stu_grade);
        }
        if (Objects.equals(password, stu_password)){
            out.print("验证成功");
            if (Objects.equals(grade, "教师")){

                response.sendRedirect("signintea.jsp");
            }else {
                session.setAttribute("stu_name",stu_name);
                response.sendRedirect("signinstu.jsp");
            }
        }else{

            response.sendRedirect("html/404.html");
            out.print("用户名或密码错误");
            out.print("<a href=\"login.jsp\">返回登录界面</a>");
        }


    }
    else{
        out.print("连接失败数据区！");
    }
}catch (Exception e) {
    out.print("数据库连接异常外部！");
}

%>

</body>
</html>
