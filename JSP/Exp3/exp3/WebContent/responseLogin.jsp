<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录界面</title>
</head>
<body>
<%
session.setAttribute("username", "孤独求败");
session.setAttribute("password", 123456);
response.sendRedirect("responseSuccess.jsp");
%>
</body>
</html>