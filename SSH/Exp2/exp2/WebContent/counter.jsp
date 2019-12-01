<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>网站计数器</title>
</head>
<body>
页面访问<%=request.getSession().getAttribute("count")%>次
</body>
</html>