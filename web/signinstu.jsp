<%--
  Created by IntelliJ IDEA.
  User: SKPrimin
  Date: 2021/6/24
  Time: 19:41
  To change this template use File | Settings | File Templates.
  本界面是学生分数查询界面，学生在登录万验证后会进入这个页面，显示九门课成绩的信息条
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="com.Score" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- font-awesome -->
    <link
            rel="stylesheet"
            href="https://cdn.bootcss.com/font-awesome/5.11.2/css/all.css"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signin.css">

    <title>学生页面</title>
</head>
<%--设置本界面的背景图片--%>
<body style="background-image: url('${pageContext.request.contextPath}/img/img34.jpg');  background-size: 100%;">

<%@page import="java.sql.*,java.util.*,java.net.*,java.lang.*" %>
<%
    //    String SNO = (String) session.getAttribute("stu_name");
    String SNO = "789";
    Score stc = new Score(SNO);
    stc.getScore();
%>

<!-- 个人卡片容器，居中卡片 -->
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
                <!-- 学号身份信息 -->
                <div class="personal-info">
                    <div class="title">
                        <h1><%=stc.SNO%>
                        </h1>
                    </div>
                </div>

                <table>
                    <tr>
                        <td>
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
                                        <div class="company"><%=stc.chinese%>
                                        </div>
                                    </div>
                                </div>
                                <div class="work-exp-item">
                                    <div class="position">数学</div>
                                    <div class="seperator"></div>
                                    <div class="work-info">
                                        <div class="company"><%=stc.math%>
                                        </div>
                                    </div>
                                </div>
                                <div class="work-exp-item">
                                    <div class="position">英语</div>
                                    <div class="seperator"></div>
                                    <div class="work-info">
                                        <div class="company"><%=stc.english%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="work-exps">
                                <div class="work-exp-item">
                                    <div class="position">物理</div>
                                    <div class="seperator"></div>
                                    <div class="work-info">
                                        <div class="company"><%=stc.physics%>
                                        </div>
                                    </div>
                                </div>
                                <div class="work-exp-item">
                                    <div class="position">化学</div>
                                    <div class="seperator"></div>
                                    <div class="work-info">
                                        <div class="company"><%=stc.chemistry%>
                                        </div>
                                    </div>
                                </div>
                                <div class="work-exp-item">
                                    <div class="position">生物</div>
                                    <div class="seperator"></div>
                                    <div class="work-info">
                                        <div class="company"><%=stc.biologic%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="work-exps">
                                <div class="work-exp-item">
                                    <div class="position">政治</div>
                                    <div class="seperator"></div>
                                    <div class="work-info">
                                        <div class="company"><%=stc.political%>
                                        </div>
                                    </div>
                                </div>
                                <div class="work-exp-item">
                                    <div class="position">历史</div>
                                    <div class="seperator"></div>
                                    <div class="work-info">
                                        <div class="company"><%=stc.history%>
                                        </div>
                                    </div>
                                </div>
                                <div class="work-exp-item">
                                    <div class="position">地理</div>
                                    <div class="seperator"></div>
                                    <div class="work-info">
                                        <div class="company"><%=stc.geography%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </section>
            <!-- 成绩部分 -->
            <section class="work-exp-section">
                <!-- 成绩容器 -->
            </section>
        </div>
    </div>
</div>

<!-- JS文件 -->
<script src="${pageContext.request.contextPath}/js/signin.js" type="text/javascript"></script>
</body>
</html>
