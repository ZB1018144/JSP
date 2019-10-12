<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:catch</title>
</head>
<body>
<%--捕获异常,并将异常信息存储在var变量中--%>
<c:catch var="myexp">
<%
 int i=0;
 int j=3/0;
%>
</c:catch>
<h1>异常</h1>
<hr>
<c:out value="${myexp}"></c:out><%--输出异常--%>
<hr>
<h1>异常信息</h1>
<c:out value="${myexp.message}"/><%--获取异常信息--%>
<hr>
<h1>引起原因</h1>
<c:out value="${myexp.cause}"/><%--获取引起异常的原因--%>
</body>
</html>