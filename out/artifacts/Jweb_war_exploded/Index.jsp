<%--
  Created by IntelliJ IDEA.
  User: SKPrimin
  Date: 2021/9/14
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="libs/scrollReveal/scrollreveal.min.js"></script>

    <!-- font-awesome -->
    <link
            rel="stylesheet"
            href="https://cdn.bootcss.com/font-awesome/5.11.2/css/all.css"
    />
    <link rel="stylesheet" href="libs/glide/glide.core.min.css" />
    <link rel="stylesheet" href="libs/glide/glide.theme.min.css" />
    <link rel="stylesheet" href="css/indexstyle.css" />

    <title>学生信息管理系统 - 创新型网络技术企业</title>
</head>
<body>
<!-- 头部 -->
<header class="open">
    <div class="logo">学生信息管理系统</div>
    <!-- 导航 -->
    <nav>
        <a href="#home">首页</a>
        <a href="#about-us">发布公告</a>
        <a href="#showcases">成绩系统</a>
        <a href="#service">表彰记录</a>
        <a href="#team-intro">团队介绍</a>
        <a href="#company-activities">校园论坛</a>
        <a href="login.jsp">登录</a>
        <i class="fas fa-search"></i>
    </nav>
    <!-- 折叠导航按钮 -->
    <div class="burger">
        <div class="burger-line1"></div>
        <div class="burger-line2"></div>
        <div class="burger-line3"></div>
    </div>
</header>
<!-- 首页图片轮播，使用glide JS插件 -->
<div class="glide" id="home">
    <!-- 轮播轨道 -->
    <div class="glide__track" data-glide-el="track">
        <!-- 所有轮播容器 -->
        <div class="glide__slides">
            <!-- 单个轮播组件 -->
            <div class="glide__slide">
                <!-- 轮播标题 -->
                <div class="slide-caption">
                    <h1>用创新点缀校园，让科技融入管理。</h1>
                    <h3>
                        学生信息管理管理大平台，智慧校园新引擎。用创新点缀校园，让科技融入管理。
                    </h3>
                    <!-- 探索按钮 -->
                    <button class="explore-btn">探索更多</button>
                </div>
                <!-- 背景遮罩 -->
                <div class="backdrop"></div>
                <!-- 轮播图片 -->
                <img src="images/people-in-couch-1024248.jpg" alt="" />
            </div>
            <!-- 第二张轮播 -->
            <div class="glide__slide">
                <div class="slide-caption left">
                    <h1>科技改变校园</h1>
                    <h3>
                        立足科学发展，着力自主创新。加速科技进步，为校园良好发展提供有力支撑。凝聚科技创意，成就创新梦想。
                    </h3>
                    <button class="explore-btn">探索更多</button>
                </div>
                <div class="backdrop"></div>
                <!-- 轮播视频 -->
                <video src="videos/working-man.mp4" muted autoplay loop></video>
            </div>
        </div>
    </div>
    <!-- glide 控制按钮 -->
    <div class="glide__arrows" data-glide-el="controls">
        <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
            <
        </button>
        <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
            >
        </button>
    </div>
    <!-- glide 控制圆点 -->
    <div class="glide__bullets" data-glide-el="controls[nav]">
        <button class="glide__bullet" data-glide-dir="=0"></button>
        <button class="glide__bullet" data-glide-dir="=1"></button>
    </div>
</div>
<!-- 内容容器 -->
<div class="content-wrapper">
    <!-- 发布公告， id用来导航菜单跳转 -->
    <section id="about-us" class="about-us">
        <!-- 标题 -->
        <h2 class="title1">发布公告</h2>
        <!-- 补充说明区域 -->
        <p class="intro">
            校园公告为全校师生提供最新资讯
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
                    为校园更好地发展提出建议
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
        </div>
    </section>
    <!-- 成绩系统 -->
    <!-- section-bg 区域灰色背景 -->
    <section id="showcases" class="showcases section-bg">
        <h2 class="title1">成绩系统</h2>
        <!-- 筛选按钮 -->
        <div class="filter-btns">
            <button class="filter-btn active" data-filter="*">
                全部
            </button>
            <!-- 指定要过滤的class selector，包括. -->
            <button class="filter-btn" data-filter=".chinese">
                语文
            </button>
            <button class="filter-btn" data-filter=".math">
                数学
            </button>
            <button class="filter-btn" data-filter=".english">
                英语
            </button>
            <button class="filter-btn" data-filter=".physics">
                物理
            </button>
            <button class="filter-btn" data-filter=".chemistry">
                化学
            </button>
            <button class="filter-btn" data-filter=".biologic">
                生物
            </button>
            <button class="filter-btn" data-filter=".political">
                政治
            </button>
            <button class="filter-btn" data-filter=".history">
                历史
            </button>
            <button class="filter-btn" data-filter=".geography">
                地理
            </button>


        </div>
        <!-- 案例 -->
        <div class="cases">
            <!-- case-item样式类，chinese math为类别类 -->
            <div class="case-item chinese">
                <a>语文成绩</a>
            </div>
            <div class="case-item math">
                <a>数学成绩</a>
            </div>
            <div class="case-item english">
                <a>英语成绩</a>
            </div>
            <div class="case-item physics">
                <a>物理成绩</a>
            </div>
            <div class="case-item chemistry">
                <a>化学成绩</a>
            </div>
            <div class="case-item biologic">
                <a>生物成绩</a>
            </div>
            <div class="case-item political">
                <a>政治成绩</a>
            </div>
            <div class="case-item history">
                <a>历史成绩</a>
            </div>
            <div class="case-item geography">
                <a>地理成绩</a>
            </div>


        </div>
    </section>
    <!-- 表彰记录 -->
    <section id="service" class="service">
        <h2 class="title1">表彰记录</h2>
        <p class="intro">
            今天我们召开表彰会,表彰通过自身努力、刻苦学习，在各方面取得优秀成绩的同学，
            也希望通过这样一次表彰会，总结，发扬成绩，团结和动员全体同学以更加崭新的思想观念、
            更加饱满的精神状态，积极投入到今后的学习中去，做一名全面健康发展的好学生。
        </p>
        <!-- 同发布公告 -->
        <div class="services">
            <div class="service-item">
                <i class="fas fa-comments"></i>
                <h2 class="service-title">自主学习标兵</h2>
                <p class="service-content">
                    他们是学习成绩优秀的同学，可是为什么他们能够考出十分令人满意的成绩呢？
                    这关键，就是他们是自主学习的人！
                    学习最主要是靠自己，会自主学习的人，自然能够取得漂亮的成绩，让我们向他们学习吧！
                </p>
            </div>
            <div class="service-item">
                <i class="fas fa-gavel"></i>
                <h2 class="service-title">勤学好问之星</h2>
                <p class="service-content">
                    他们品德优秀，乐于助人，关心学校，为学校做出许多贡献。
                    而且他们学习刻苦，积极乐观。
                    对他们来说这项“勤学好问”奖是当之无愧的！
                </p>
            </div>
            <div class="service-item">
                <i class="fas fa-file-signature"></i>
                <h2 class="service-title">学习优秀之星</h2>

                <p class="service-content">
                    他们是一颗颗耀眼的明星，在信息安全班这样一个团结奋进的集体中发光发亮。
                    正是那份努力，那份刻苦，那份积极，那份执着，那份认真的态度，才塑造了今天这样的他们；
                    才创造了未来无数的奇迹。
                </p>
                <h2>冯雨振</h2>
            </div>
            <div class="service-item">
                <i class="fas fa-user"></i>
                <h2 class="service-title">进步之星</h2>
                <p class="service-content">
                    他们都是积极进取的学生，平时在课堂上认真听讲，课后认真复习。
                    也许以往的他们总是默默无闻，可是这次他们用成绩向我们证明了什么叫做“不鸣则已，一鸣惊人”！
                </p>
            </div>
            <div class="service-item">
                <i class="fas fa-chalkboard-teacher"></i>
                <h2 class="service-title">学科之星</h2>
                <p class="service-content">
                    他们执着，执着于那一片神圣的领土；
                    他们刻苦，专注于每一个标点，每一个符号；
                    他们热爱，深深地热爱着知识;
                    他们终于成功，闪耀如天上的明星。
                </p>
            </div>
            <div class="service-item">
                <i class="fas fa-user-check"></i>
                <h2 class="service-title">体育之星</h2>
                <p class="service-content">
                    他们积极参与体育项目，努力，拼搏，为班争光。
                    他们在赛场上洒下的汗水使我们深深地记住了他们那矫健的身姿。
                    而他们的无私，让我们为之动容。
                </p>
            </div>
        </div>
    </section>
    <!-- 团队介绍 -->
    <section id="team-intro" class="team-intro section-bg">
        <h2 class="title1">团队介绍</h2>
        <!-- 团队成员容器 -->
        <div class="team-members">
            <!-- 团队成员 -->
            <div class="team-member">
                <!-- 成员照片 -->
                <div class="profile-image">
                    <img src="images/c463cd8abcffd0bbd490da8bd8975c6a0552f615.jpg" alt="" />
                </div>
                <!-- 成员姓名 -->
                <h4 class="name">张丞</h4>
                <!-- 成员职位 -->
                <p class="position">前端工程师</p>
                <!-- 成员社交账号 -->
                <ul class="social-links">
                    <li>
                        <a href="#"><i class="fab fa-weixin"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-weibo"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-github"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                    </li>
                </ul>
            </div>
            <div class="team-member">
                <div class="profile-image">
                    <img
                            src="images/c13ab076e2a4fdc93fc13a09e9a81a998e7eb120.jpg"
                            alt=""
                    />
                </div>
                <h4 class="name">姚佳坤</h4>
                <p class="position">后端工程师</p>
                <ul class="social-links">
                    <li>
                        <a href="#"><i class="fab fa-weixin"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-weibo"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-github"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                    </li>
                </ul>
            </div>
            <div class="team-member">
                <div class="profile-image">
                    <img
                            src="images/0826962bda56a99d32ef4490e3542ef69f1722c3.jpg"
                            alt=""
                    />
                </div>
                <h4 class="name">刘琦</h4>
                <p class="position">后端工程师</p>
                <ul class="social-links">
                    <li>
                        <a href="#"><i class="fab fa-weixin"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-weibo"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-github"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                    </li>
                </ul>
            </div>
            <div class="team-member">
                <div class="profile-image">
                    <img src="images/f21b622c81a92dcbec204d839dbd95d6e8bf42f9.jpg" alt="" />
                </div>
                <h4 class="name">亢舰</h4>
                <p class="position">数据库工程师</p>
                <ul class="social-links">
                    <li>
                        <a href="#"><i class="fab fa-weixin"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-weibo"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-github"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <!-- 数据展示  -->
    <section id="data-section" class="data-section">
        <!-- 单个数据  -->
        <div class="data-piece">
            <!-- 图标 -->
            <i class="fas fa-code"></i>
            <!-- 数据 -->
            <div class="num">1676</div>
            <!-- 单位 -->
            <div class="data-desc">行代码</div>
        </div>
        <div class="data-piece">
            <i class="fas fa-award"></i>
            <div class="num">88</div>
            <div class="data-desc">个奖项</div>
        </div>
        <div class="data-piece">
            <i class="fas fa-laugh-wink"></i>
            <div class="num">74</div>
            <div class="data-desc">位同学</div>
        </div>
        <div class="data-piece">
            <i class="fas fa-folder"></i>
            <div class="num">20</div>
            <div class="data-desc">个项目</div>
        </div>
    </section>
    <!-- 校园论坛 -->
    <section id="company-activities" class="company-activities">
        <h2 class="title1">校园论坛</h2>
        <p class="intro">
            关注校园论坛，第一时间获取校园消息
        </p>
        <!-- 动态容器 -->
        <div class="activities">
            <!-- 动态 -->

            <div class="activity">
                <div class="act-image-wrapper">
                    <img src="images/ZDL4$DN86F41)$HCMC8RS@F.jpg" alt="" />
                </div>
                <div class="meta">
                    <p class="date-published">
                        <i class="far fa-calendar"></i> 2019年12月1日
                    </p>
                    <p class="comments"><i class="far fa-comments"></i> 33条评论</p>
                </div>
                <h2 class="act-title">关于南北朝历史研究</h2>
                <article>
                    南朝（420-589）承自东晋，由汉族建立，有南朝宋、南朝齐、南朝梁、南朝陈四朝，均以建康（今江苏南京）为都；
                    北朝（386-581）承自十六国，由鲜卑族建立，有北魏、东魏、西魏、北齐和北周五朝，北魏分裂为东魏、西魏，
                    北齐取代东魏，北周取代西魏，北周灭北齐。 </article>
                <button class="readmore-btn" >阅读更多</button>
            </div>
        </div>
    </section>
</div>
<!-- 底部信息 -->
<footer>
    <!-- 底部菜单 -->
    <div class="footer-menus">
        <!-- 联系信息 -->
        <div class="contact-us">
            <p class="menu-title">联系我们</p>
            <p>地址：中国安徽省合肥市安徽大学磬苑校区</p>
            <p>电话：+18618618611861</p>
            <p>电子邮箱：admin@abc.com</p>
        </div>
        <!-- 导航菜单 -->

        <div class="activity-menu footer-menu">
            <p class="menu-title">学习专区</p>
            <ul class="menu-items">
                <li><a href="#"> 图书推荐及链接</a></li>
                <li><a href="#">二进制转换，定点小数乘法</a></li>
                <li><a href="#">几大加密解密</a></li>
            </ul>
        </div>
        <div class="help-menu footer-menu">
            <p class="menu-title">工具专区</p>
            <ul class="menu-items">
                <li><a href="#">校历</a></li>
                <li><a href="#">浴室开发</a></li>
                <li><a href="#">文档对比工具</a></li>
            </ul>
        </div>
        <!-- 备案信息 -->
        <p class="icp-info">
            合ICP备 1234567890-1 号
        </p>
        <!-- 版权信息 -->
        <p class="rights">
            &copy; 2021 学生信息管理系统 - 琦哥技术 版权所有
        </p>
        <!-- 返回顶部按钮 -->
        <div class="scrollToTop">
            <a href="#home"><i class="fas fa-chevron-up"></i></a>
        </div>
    </div>
</footer>
<!-- 轮播插件 -->
<script src="libs/glide/glide.min.js"></script>
<!-- 案例筛选组件  -->
<script src="libs/isotope/isotope.pkgd.min.js"></script>
<!-- 动画组件 -->
<script src="libs/anime/anime.min.js"></script>
<!-- 流畅滑动组件 -->
<script src="libs/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
<!-- 自定义JS文件 -->
<script src="js/index.js"></script>
</body>
</html>

