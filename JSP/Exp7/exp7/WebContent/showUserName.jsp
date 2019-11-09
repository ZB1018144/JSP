<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<base href="<%=basePath%>">
<title>显示用户名</title>
</head>
<body>
	<%
		String username = (String) request.getAttribute("username");
	%>

	<p>
		用户名：<%=username%>
		</p>
</body>
</html>