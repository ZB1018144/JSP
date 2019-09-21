<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录界面</title>
</head>
<body>
<!--       编写一个JSP登录页面，可输入用户名和密码，提交请求到另一个JSP页面，
      该JSP页面获取请求的相关数据并显示出来。请求的相关数据包括用户输入
      的请求数据和请求本身的一些信息(比如请求使用的协议getProtocol()
       、请求的URI request.getServletPath() 、请求方法request.getMethod() 
       、远程地址request.getRemoteAddr()等)。 -->
       
<form action="loginSuccess.jsp">
<p>用户名：<input type="text" name="username"/></p>
<p>密码：<input type="password"" name="password"/></p>
<p><input type="submit" value="提交"/></p>
</form>
</body>
</html>