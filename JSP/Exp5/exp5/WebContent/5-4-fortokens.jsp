<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:forTokens</title>
</head>
<body>
<%--通过一个分割符将字符串划分为数组,并遍历出来--%>
<c:forTokens var="ele" items="blue,red,green|yellow|pink,black|white" delims="|">
<c:out value="${ele}"/>||
</c:forTokens>
<br>
<%--通过多个分割符将字符串划分问数组,并遍历出来--%>
<c:forTokens var="ele" items="blue,red!green|yellow;pink;black|white" delims="|;,!">
<c:out value="${ele}"/>||
</c:forTokens>
</body>
</html>