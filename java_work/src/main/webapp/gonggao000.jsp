<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>公告</title>
</head>
<body>
<form action="gonggao111.jsp">
<div class="content-wrapper">
    <!-- 发布公告， id用来导航菜单跳转 -->
    <section id="about-us" class="about-us">
        <!-- 标题 -->
        <h2 class="title1">发布公告</h2>
        <!-- 补充说明区域 -->
        <p class="intro">
            班级公告为班级成员提供最新资讯
        </p>
        <!-- 公司业务容器，栅格布局 -->
        <div class="features">
            <!-- 公司业务 -->
            <div class="feature">
                <!-- 左侧业务图标 -->
                <i class="fas fa-lightbulb"></i>
                <!-- 右侧业务标题 -->
                <h4 class="feature-title">建设建议</h4>
                <!-- 右侧业务内容 -->
                <p class="feature-content">
                    为班级更好发展提出建议
                </p>
            </div>
            <div class="feature">
                <i class="fas fa-chart-line"></i>
                <h4 class="feature-title">党的建设</h4>
                <p class="feature-content">
                    青年大学习
                </p>
            </div>
            <div class="feature">
                <i class="fas fa-shopping-cart"></i>
                <h4 class="feature-title">课程通知</h4>
                <p class="feature-content">
                    一些课程的临时变动，修改
                </p>
            </div>
            <div class="feature">
                <i class="fas fa-desktop"></i>
                <h4 class="feature-title">作业通知</h4>
                <p class="feature-content">
                    各科目作业内容
                </p>
            </div>
            <div class="feature">
                <i class="fas fa-tachometer-alt"></i>
                <h4 class="feature-title">考试安排</h4>
                <p class="feature-content">
                    各科考试时间及地点
                </p>
            </div>
            <div class="feature">
                <i class="fas fa-server"></i>
                <h4 class="feature-title">匿名投诉</h4>
                <p class="feature-content">
                    通过加密通道保护您的安全
                </p>
            </div>
            <div class="talk">
              公告：
              <textarea id="des" rows="3" cols="30" name="desc"></textarea>
           </div>
           <button type="submit" name="name1" class="inputButton"value="" >提交</button>
        </div>
            </section>
        </div>
      </form>
</body>
</html>