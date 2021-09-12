<%--
  Created by IntelliJ IDEA.
  User: SKPrimin
  Date: 2021/6/24
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page import="java.util.*" %>
<HTML>
<BODY>
你好,
<%! String Name;%>
<%
    Name="adfgghgefsgnhgtg";
%>
<%=Name%>,
今天是
<%
    Date today=new Date();
%>
<%=today.getDate()%>号，星期<%=today.getDay()%>
</BODY>
</HTML>

</body>
</html>
