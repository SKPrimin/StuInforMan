<%--
  Created by IntelliJ IDEA.
  User: SKPrimin
  Date: 2021/5/21
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.net.*,java.lang.*"%>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎界面</title>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/img/img34.jpg');  background-size: 100%;">

<p>
    <%
        //从表单中获取数据
        String username = request.getParameter("User");
        String phonenumber =request.getParameter("Telephone");
        String password = request.getParameter("Password");
        String sex = request.getParameter("sex");
        String desc = request.getParameter("desc");
        String grade = request.getParameter("grade");

        // 用户名正则表达式验证
        if (!username.matches("^[\\u4e00-\\u9fa5]{3,10}")) {
            out.println("请重新设置用户名");
            out.println("<a href=\"login.jsp\">返回登录界面</a>");
        }//正则表达式电话号码
        else if (!phonenumber.matches("^1[0-9]{10}")){
            out.print("请输入正确的电话号码");
            out.println("<a href=\"login.jsp\">返回登录界面</a>");
        }//正则表达式密码6-16个字母、数字、下划线
        else if(!password.matches("^(\\w|\\d|_){6,16}")){
            out.print("请重新设置密码");
            out.println("<a href=\"login.jsp\">返回登录界面</a>");
        }else{
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection connect = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/javauser?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone = GMT",
                        "root", "root");
//test为数据库名，root为用户名，password为密码，需根据实际情况进行修改。
                if(connect != null){
                    out.print("数据库连接成功！");


                    String sql="insert into stu_log(stu_name,stu_password,stu_telephone,stu_sex,stu_desc,stu_grade) values(?,?,?,?,?,?)";
                    //添加学生信息的sql语句
                     PreparedStatement ps=connect.prepareStatement(sql);
                    //获取PreparedStatement
                    ps.setString(1,username);//对sql语句中的第1个参数赋值
                    ps.setString(2,password);//对sql语句中的第2个参数赋值
                    ps.setString(3,phonenumber);//对sql语句中的第3个参数赋值
                    ps.setString(4,sex);//对sql语句中的第4个参数赋值
                    ps.setString(5,desc);//对sql语句中的第5个参数赋值
                    ps.setString(6,grade);//对sql语句中的第6个参数赋值
                    int row=ps.executeUpdate();//执行更新操作，返回所影响的行数
                    if(row>0){
                        out.print("成功添加了 "+row+" 条数据！！！");
                    }
                    ps.close();
                    connect.close();
                }
                else{
                    out.print("连接失败数据区！");
                }
            }catch (Exception e) {
                out.print("数据库连接异常外部！");
            }

%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- font-awesome -->
        <link
                rel="stylesheet"
                href="https://cdn.bootcss.com/font-awesome/5.11.2/css/all.css"
        />
        <link rel="stylesheet" href="css/signin.css" />
        <title>Document</title>
    </head>
    <body>
    <!-- 个人卡片容器，居中卡片 -->
    <div class="wrapper">
        <!-- 个人卡片 -->
        <div class="profile-card">
            <!-- 卡片内容，导航，个人简介和账户信息 -->
            <div class="content">
                <!-- 导航 -->
                <nav id="nav-menu">
                    <!-- data-rel，在js里获取当前要展示哪个section，是个人简介还是账户信息 -->
                    <a class="active" href="#" data-rel="about-me-section">个人简介</a>
                    <a href="#" data-rel="work-exp-section">账户信息</a>
                    <!-- 当前选中菜单的指示条 -->
                    <div class="indicator"></div>
                </nav>
                <!-- 关于我部分 -->
                <section class="about-me-section active-section">
                    <!-- 名字和身份信息 -->
                    <div class="personal-info">
                        <div class="title">
                            <h1><%out.println(username);%></h1>
<h2><%out.println(sex);%>/<%out.println(grade);%></h2>

</div>
<!-- 个人简介的内容 -->
                        <br/>
<div class="about-me">
    <p>
        <%out.println(desc);%>
    </p>
</div>


</section>
<!-- 账户信息部分 -->
<section class="work-exp-section">
    <!-- 账户信息容器 -->
    <div class="work-exps">
        <!-- 每条账户信息 -->
        <div class="work-exp-item">
            <!-- 职位 -->
            <div class="position">账户名</div>
            <!-- 分隔线 -->
            <div class="seperator"></div>
            <!-- 账户信息 -->
            <div class="work-info">

                <div class="company"><%out.println(username);%></div>
            </div>
        </div>
        <div class="work-exp-item">
            <div class="position">手机号</div>
            <div class="seperator"></div>
            <div class="work-info">
                <div class="company"><%out.println(phonenumber);%></div>
            </div>
        </div>
        <div class="work-exp-item">
            <div class="position">密码</div>
            <div class="seperator"></div>
            <div class="work-info">
                <div class="company"><%out.println(password);%></div>
            </div>
        </div>
    </div>
</section>

<!-- JS文件 -->
<script src="js/signin.js" type="text/javascript"></script>
</body>
</html>
<%}%>