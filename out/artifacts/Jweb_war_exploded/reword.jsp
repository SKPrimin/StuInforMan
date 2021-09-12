<%--
  Created by IntelliJ IDEA.
  User: SKPrimin
  Date: 2021/6/30
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*,java.util.*,java.net.*,java.lang.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%!
    String username;
    String oldpwd ;
    String newpwd ;
    String confirm ;
    String passwordin;

%>
<% try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection connect = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/javauser?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone = GMT",
            "root", "root");
//test为数据库名，root为用户名，password为密码，需根据实际情况进行修改。
    if(connect != null){
        out.print("数据库连接成功！");

        Statement stmt = connect.createStatement();
        username = request.getParameter("username");

        ResultSet rs = stmt.executeQuery("select * from stu_log where stu_name = '"+username+"'");

        while (rs.next()) {
            passwordin = rs.getString("stu_password");
        }
        out.print(passwordin);
        oldpwd = request.getParameter("password");//旧密码
        newpwd = request.getParameter("password1");//新密码
        confirm = request.getParameter("password2");//确认新密码
        int i = 0;
        if (Objects.equals(newpwd, confirm)){
            if (Objects.equals(passwordin, oldpwd)){
                String sql = "UPDATE stu_log" +" SET stu_password="+newpwd +" WHERE stu_name="+"'"+username+"'";
                PreparedStatement ps=connect.prepareStatement(sql);
                i = ps.executeUpdate();
                out.print(username + "修改密码成功，修改了"+ i +"行");
            }else {
                out.print("旧密码错误，修改密码失败");
            }
        }else{
            out.print("两次密码输入不一致，修改密码失败");
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
