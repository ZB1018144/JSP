<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" errorPage="errorPage.jsp"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorinfo.jsp</title>
</head>
<body>
   <%
      //除运算正常情况
      //double i=8/7;
      //异常情况
      double i=8/0;
     %>
    <%=i %>
</body>
</html>