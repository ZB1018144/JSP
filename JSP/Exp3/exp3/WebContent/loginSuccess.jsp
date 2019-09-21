<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录成功页面</title>
</head>
<body>
<!--编写一个JSP登录页面，可输入用户名和密码，提交请求到另一个JSP页面，
      该JSP页面获取请求的相关数据并显示出来。请求的相关数据包括用户输入
      的请求数据和请求本身的一些信息(比如请求使用的协议getProtocol()
       、请求的URI request.getServletPath() 、请求方法request.getMethod() 
       、远程地址request.getRemoteAddr()等)。 -->
<h2>我是登录提交后的跳转页面</h2>
<p>用户名：<%=request.getParameter("username") %></p>
<p>密码：<%=request.getParameter("password") %></p>
<p>请求使用的协议：<%=request.getProtocol() %></p>
<p>请求的URI：<%=request.getServletPath() %></p>
<p>请求方法：<%=request.getMethod() %></p>
<p>远程地址：<%=request.getRemoteAddr()%></p>
</body>
</html>