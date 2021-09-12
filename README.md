 ```mermaid
  classDiagram
      index --|> signup
      index --|> signin
      signin --|> signintea
      signin --|> signinstu
      signin --|> repassword
      
      mysql o-- signup
      mysql o-- signintea
      mysql o-- signinstu
      mysql o-- repassword
      
      
 
 
      class index{
         主界面
      }
      class signup{
         注册
      }
      class signin{
         登录
      }
      class signintea{
 		教师登录
      }
 	 class signinstu{
 		学生登录
      }
  	 class repassword{
 		修改密码
      }
      class mysql{
      数据库
       stu_log()
       stu_tbl()
      }
 ```

# 主界面

![index](img\index.png)

![index2](img\index2.png)

在本页面[login.jsp](./web/login.jsp)的输入验证中，使用了正则表达式，验证函数存放在js路径下[check.js](./web/js/check.js),

部分源代码如下,完整版请点开链接查看

```jsp
<%--
  Created by IntelliJ IDEA.
  User: SKPrimin
  Date: 2021/5/21
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>注册登录界面Ⅰ</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
  <link rel="stylesheet" href="css/style.css">
  <script src="js/check.js" type="text/javascript"></script>
</head>
<body>
<div class="container right-panel-active">
  <!-- 注册 -->
  <div class="container_form container--signup">
    <form action="signup.jsp" class="form" name="form1" method="get" >
      <h2 class="form_title">Sign Up</h2>
      <input type="text" placeholder="User" name="User" id="User" class="input" onblur="checkUser()"/>
      <span class="yanzheng" id="msg"></span>

      <input type="tel" placeholder="Telephone" name="Telephone" id="Telephone" class="input" onblur="checkPhone()"/>
      <span class="yanzheng" id="msgphe"></span>

      <input type="password" placeholder="Password" name="Password" id="Password" class="input" onblur="checkPassword()"/>
      <span class="yanzheng" id="msgpass"></span>

      <input type="password" placeholder="Confirm Password" id="Password2" class="input" onblur="checkPassword2()"/>
      <span class="yanzheng" id="msgpass2"></span>

      <div class="input-group input-group-jsxx">
        <table name="sex" class="formline login-radio clearfix" border="0">
          <tr>
            <td><input id="sex_1" type="radio" name="sex" value="男" tabindex="4" />
              <label for="sex_1">男</label></td>
            <td><input id="sex_2" type="radio" name="sex" value="女" checked="checked" tabindex="4" />
              <label for="sex_2">女</label></td>
          </tr>
        </table>
      </div>

      <div class="inputText2" id="inputText2">
                <textarea rows="1" cols="20" name="desc" class="inputText" id="inputText">个人简介：
               </textarea>
      </div>

      <div class="inputText3" id="grade">
        Chioce your grade： <br />
        <select class="inputText2" name="grade">
          <option value="教师" class="inputText2">teacher</option>
          <option value="大一" class="inputText2">freshman</option>
          <option value="大二" class="inputText2" checked="checked">sophomore</option>
          <option value="大三" class="inputText2">junior</option>
          <option value="大四" class="inputText2">senior</option>
        </select>
      </div>

<%--      <input type="submit" class="btn" >Sign Up</input>--%>
      <button type="submit" class="btn" >Sign Up</button>
    </form>
  </div>

  <!-- 登录 -->
  <div class="container_form container--signin">
    <form action="signjud.jsp" class="form" id="form2">
      <h2 class="form_title">Sign In</h2>
      <input type="text" placeholder="User" name="username" id="Userin" class="input" onblur="checkUserin()" />
      <span class="yanzheng" id="msgin"></span>
      <input type="password" placeholder="Password" name="password" id="Passwordin" class="input" onblur="checkPasswordin()" />
      <span class="yanzheng" id="msgpassin"></span>
      <a href="html/repassword.html" class="link">Reset your password?</a>
      <div class="checkbox">
        <input type="checkbox" id="remember" />
        <label for="remember">Remember Me</label>
      </div>
      <div class="input-group input-group-jsxx">
        <table id="Identity1" class="formline login-radio clearfix" border="0">
          <tr>
            <td><input id="Identity1_1" type="radio" name="RadioButtonList1" value="教师" tabindex="4" />
              <label for="Identity1_1">教师</label></td>
            <td><input id="Identity1_2" type="radio" name="RadioButtonList1" value="学生" checked="checked" tabindex="4" />
              <label for="Identity1_2">学生</label></td>
          </tr>
        </table>

      </div>
      <button type="submit" class="btn" >Sign In</button>
    </form>
  </div>

  <!-- 浮层 -->
  <div class="container_overlay">
    <div class="overlay">
      <div class="overlay_panel overlay--left">
        <button class="btn" id="signIn">Sign In</button>
      </div>
      <div class="overlay_panel overlay--right">
        <button class="btn" id="signUp">Sign Up</button>
      </div>
    </div>
  </div>
</div>

<!-- 背景 -->
<div class="slidershow">
  <div class="slidershow--image" style="background-image: url('img/img0.jpg')"></div>
  <div class="slidershow--image" style="background-image: url('img/img1.jpg')"></div>
  <div class="slidershow--image" style="background-image: url('img/img2.jpg')"></div>
  <div class="slidershow--image" style="background-image: url('img/img3.jpg')"></div>
</div>

<!-- 背景图片切换 -->
<script src="js/overlay.js" type="text/javascript"></script>
</body>
</html>
```

```javascript
^[\u4e00-\u9fa5]{3,10} 
!/^[\u4e00-\u9fa5]+$/.test(strText)//用户名
^1[0-9]{10}
/^1[34578]\d{9}$///电话号码
^(\w|\d|_){6,16} 
/^(\w){6,16}$///密码
```

精美的404界面

![0404](img\404.png)

## 注册

![Snipaste_2021-07-01_20-43-04](img\Snipaste_2021-07-01_20-43-04.png)

![Snipaste_2021-07-01_20-44-35](img\Snipaste_2021-07-01_20-44-35.png)

![Snipaste_2021-07-01_20-44-40](img\Snipaste_2021-07-01_20-44-40.png)

代码实现 [signup.jsp](./web/signup.jsp)

```jsp
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
```



## 登录

### 学生登录

![Snipaste_2021-07-01_20-08-42](img\Snipaste_2021-07-01_20-08-42.png)

### 教师登录

![Snipaste_2021-07-01_20-09-33](img\Snipaste_2021-07-01_20-09-33.png)

![Snipaste_2021-07-01_20-09-19](img\Snipaste_2021-07-01_20-09-19.png)

登录判断使用[signjud](./web/signjud.jsp)

相关核心代码如下，其中学生姓名通过session传递

其中使用了java程序求平均成绩，最大值，最小值，分布统计Java程序位于 src/com

```java
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
```

通往的两个界面

教师界面[signintea.jsp](./web/signintea.jsp)

```jsp
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
        String[] name = stu_name;

        int courseNum = 2;
        int[] courseNo = {1, 2};
        String courseName[] = {"Chinese", "Math"};


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
</style>
</body>
</html>
```

学生界面

```jsp
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
```

## 修改密码

在主界面点击 Reset your password?，即可跳转

![Snipaste_2021-07-01_20-25-36](img\Snipaste_2021-07-01_20-25-36.png)

![Snipaste_2021-07-01_20-25-43](img\Snipaste_2021-07-01_20-25-43.png)

修改密码功能先由 [repassword.html](./web/html/repassword.html) 中表单收集数据，随后传值到 [reword.jsp](./web/reword.jsp) 进行数据库处理

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改密码</title>
    <script src="../js/check.js" type="text/javascript"></script>
</head>
<body>
<div class="background">
    <h2>修改密码</h2>
    <div class="glass">
        <table align="center">
            <form action="../reword.jsp" class="form" name="form1" method="post" >
                <tr><td>用户名：</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr><td>旧密码：</td>
                    <td><input type="password" name="password" id="password" onblur="checkPassword()"/></td>
                </tr>
                <tr> <td>新密码</td>
                    <td><input type="password" name="password1" id="password1" onblur="checkPassword()"/></td>
                </tr>
                <tr> <td>确认密码</td>
                    <td><input type="password" name="password2" id="password2" onblur="checkPassword2()"/></td>
                </tr>
                <td calspan="2"><input type="submit" name="submit" value="修改"></td>
            </form>
        </table>
    </div>
</div>
<!-- Photo by Martin Mariani from Pexels -->
</body>
</html>
```

```java
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

```

## Mysql数据库

也已导出至文件夹中

![Snipaste_2021-07-01_21-14-22](img\Snipaste_2021-07-01_21-14-22.png)

![Snipaste_2021-07-01_21-14-14](img\Snipaste_2021-07-01_21-14-14.png)