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

<!-- partial -->
<script src="js/overlay.js" type="text/javascript"></script>
</body>
<style>
  .yanzheng{
    font-size: 10px;
    line-height: 0px;
    letter-spacing: 0.6em;
    color:red
  }
</style>
</html>
