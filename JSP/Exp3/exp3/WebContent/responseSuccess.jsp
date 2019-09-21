<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>页面重定向目标页面</title>
</head>
<body>
<h2>我是重定向目标页面</h2>
<p>用户名：<%=request.getSession().getAttribute("username") %></p>
<p>密码：<%=request.getSession().getAttribute("password") %></p>
</body>
</html>