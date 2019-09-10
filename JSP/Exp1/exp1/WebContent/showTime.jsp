<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>实施刷新当前时间</title>
<meta http-equiv="refresh" content="1">
</head>
<body>
<%
Date time = new Date();
int hour = time.getHours();
int min = time.getMinutes();
int second = time.getSeconds();
%>
<h2>当前时间是：<%=hour%>:<%=min%>:<%=second%></h2>
</body>
</html>