<%--
  Created by IntelliJ IDEA.
  User: SKPrimin
  Date: 2021/6/30
  Time: 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师页面</title>
    <link rel="stylesheet" href="css/tea.css" />

</head>
<body>

<%@page import="java.sql.*,java.util.*,java.net.*,java.lang.*"%>
<%@page import= "com.* "%>
<%!
    String memberlist;
    String getAverage;
    String getMax;
    String getMin;
    String gradeDistribution;
    %>
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Success loading Mysql Driver!");
    } catch (Exception e) {
        System.out.print("Error loading Mysql Driver!");
        e.printStackTrace();
    }
    try {
        Connection connect = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/javauser?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone = GMT",
                "root", "root");
//test为数据库名，root为用户名，password为密码，需根据实际情况进行修改。
        System.out.println("Success connect Mysql server!");
        Statement stmt = connect.createStatement();
        ResultSet rs = stmt.executeQuery("select * from stu_tbl"); //mytable为表名
        String[] stu_name = new String[4];
        double[][] stu_score = new double[4][2];
        int numStudents = 0;
        while (rs.next()) {
            stu_name[numStudents] = rs.getString("stu_name");
            int j = 0;
            stu_score[numStudents][j] = rs.getInt("stu_chinese");
            j++;
            stu_score[numStudents][j] = rs.getInt("stu_math");
            numStudents++;
        }

        int stuNum = 4;
//            String[] name = {"wei", "zhao", "wang", "zhang"};
        String[] name = stu_name;

        int courseNum = 2;
        int[] courseNo = {1, 2};
        String courseName[] = {"Chinese", "Math"};
//            double[][] courseScore = {{100, 90}, {81, 79}, {69, 86}, {81, 72}};

        double[][] courseScore = stu_score;

        Student[] stu = new Student[stuNum];

        for (int i = 0; i < stuNum; i++) {
            Grade grade[] = new Grade[courseNum];
            for (int j = 0; j < courseNum; j++) {
                grade[j] = new Grade(courseNo[j], courseName[j], courseScore[i][j]);
            }
            stu[i] = new Student(name[i], grade);
        }
        Classes cl = new Classes(stu);

        memberlist = cl.memberlist();
        getAverage = cl.getAverage();
        getMax = cl.getMax();
        getMin = cl.getMin();
        gradeDistribution = cl.gradeDistribution();
%>

<main class="container">
    <div class="tab-container">
        <div class="tabs">
            <div id="tab1" class="tab active">班级成员</div>
            <div id="tab2" class="tab">平均成绩</div>
            <div id="tab3" class="tab">最高分</div>
            <div id="tab4" class="tab">最低分</div>
            <div id="tab5" class="tab">分数分布统计</div>
            <div id="tab6" class="tab">完整统计</div>
        </div>
        <div class="tab-content">
            <div data-tab="tab1" style="display: block">
                <h3><%=memberlist%></h3>
            </div>
            <div data-tab="tab2" style="display: none">
                <h3><%=getAverage%></h3>
            </div>
            <div data-tab="tab3" style="display: none">
                <h3><%=getMax%></h3>
            </div>
            <div data-tab="tab4" style="display: none">
                <h3><%=getMin%></h3>
            </div>
            <div data-tab="tab5" style="display: none">
                <h3><%=gradeDistribution%></h3>
            </div>
            <div data-tab="tab6" style="display: none">
                <table border="0">
                    <caption class="para1">
                        班级成绩统计
                    </caption>
                    <tr>
                        <th>名称</th>
                        <th>内容</th>
                    </tr>
                    <tr>
                        <td class="tl">班级成员</td>
                        <td class="t"><%=memberlist%></td>
                    </tr>
                    <tr>
                        <td class="tl">平均成绩</td>
                        <td class="t"><%=getAverage%></td>
                    </tr>
                    <tr>
                        <td class="tl">最高分</td>
                        <td class="t"><%=getMax%></td>
                    </tr>
                    <tr>
                        <td class="tl">最低分</td>
                        <td class="t"><%=getMin%></td>
                    </tr>
                    <tr>
                        <td class="tl">分数分布统计</td>
                        <td class="t"><%=gradeDistribution%></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</main>

<script src="js/tea.js"></script>
<%
    } catch (Exception e) {
        System.out.print("get data error!");
        e.printStackTrace();
    }

%>
<style type="text/css">


</style>
</body>
</html>
