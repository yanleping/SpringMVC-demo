<%--
  Created by IntelliJ IDEA.
  User: yanleping
  Date: 2017/12/21
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form action="<%=basePath%>java/net/login" method="post">
    username:<input type="text" name="username">
    <br/>
    password:<input type="text" name="password">
    <br/>
    <input type="submit" value="登录">
</form>
</body>
</html>
