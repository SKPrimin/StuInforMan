<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


    <meta charset="UTF-8">
    <link rel="stylesheet" href="csss.css" type="text/css" />
    <title>登录</title>
    <style>body
{
background-image:url('asd.jpg');
background-size:cover;
background-attachment:fixed;

}
</style>
</head>
<body>

 <div id="box1">
    <h1>Login</h1>
    <div id="box3">
     <form action="xuanze.jsp">
         <input id="user" type="text" placeholder="用户名" name="username" class="username" onblur="cusers()" />
			<br /> 
			<br /> 
		<input id="psd" type="password" placeholder="密码" name="psdword" class="username"onblur="cusers()" />
		 <br />
         <div class="renyuan">
           人员：
           <input type="radio" id="ry" name="user" value="user"/>学生
           <input type="radio" id="ry" name="user" value="manage" />老师
         </div>
        
        <button type="submit" class="inputButton" value="" >登录</button>
		<script type="text/javascript">
		</script>
		</form>
    </div>
  </div>

</body>
</html>
