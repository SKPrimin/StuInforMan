<%--
  Created by IntelliJ IDEA.
  User: SKPrimin
  Date: 2021/6/24
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- font-awesome -->
    <link
            rel="stylesheet"
            href="https://cdn.bootcss.com/font-awesome/5.11.2/css/all.css"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signin.css">

    <title>学生页面</title>
</head>

<body style="background-image: url('${pageContext.request.contextPath}/img/img34.jpg');  background-size: 100%;">
<!-- 个人卡片容器，居中卡片 -->

<%@page import="java.sql.*,java.util.*,java.net.*,java.lang.*"%>
<%! String username;
    int chinesescore;
    int mathscore;
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
        username = (String) session.getAttribute("stu_name");

        ResultSet rs = stmt.executeQuery("select * from stu_tbl where stu_name = '"+username+"'");
        out.print(rs);
        while (rs.next()) {
            chinesescore = rs.getInt("stu_chinese");
            mathscore = rs.getInt("stu_math");
            out.print(chinesescore + "ad" + mathscore);
        }
    }
    else{
        out.print("连接失败数据区！");
    }
}catch (Exception e) {
    out.print("数据库连接异常外部！");
}
%>



<div class="wrapper">
    <!-- 个人卡片 -->
    <div class="profile-card">
        <!-- 卡片内容，导航，个人简介 -->
        <div class="content">
            <!-- 导航 -->
            <nav id="nav-menu">
                <!-- data-rel，在js里获取当前要展示哪个section，是个人简介还是账户信息 -->
                <a class="active" href="#" data-rel="about-me-section">学生成绩</a>

                <!-- 当前选中菜单的指示条 -->
                <div class="indicator"></div>
            </nav>
            <!-- 关于我部分 -->
            <section class="about-me-section active-section">
                <!-- 名字身份信息 -->
                <div class="personal-info">
                    <div class="title">
                        <h1><%=username%></h1>
                    </div>

                </div>
                <div class="work-exps">
                    <!-- 每条成绩 -->
                    <div class="work-exp-item">
                        <!-- 语文 -->
                        <div class="position">语文</div>
                        <!-- 分隔线 -->
                        <div class="seperator"></div>
                        <!-- 分数 -->
                        <div class="work-info">
                            <!-- 语文分数 -->
                            <div class="company"><%=chinesescore%></div>
                        </div>
                    </div>
                    <div class="work-exp-item">
                        <div class="position">数学</div>
                        <div class="seperator"></div>
                        <div class="work-info">

                            <div class="company"><%=mathscore%></div>
                        </div>
                    </div>
                </div>


            </section>
            <!-- 成绩部分 -->
            <section class="work-exp-section">
                <!-- 成绩容器 -->

            </section>
        </div>
    </div>
</div>

<!-- JS文件 -->
<script src="../js/signin.js" type="text/javascript"></script>
</body>
</html>
