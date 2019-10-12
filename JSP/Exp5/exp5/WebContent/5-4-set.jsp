<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:set</title>
</head>
<body>
<%--将变量定义在Jsp范围内--%>
<%--value属性的两种使用方式--%>
<c:set var="username" value="jack" scope="session"></c:set>
<c:set var="pwd" scope="session">000</c:set>
<%--通过el表达式语言输出--%>
${sessionScope.username}
${sessionScope.pwd}
<%--通过jstl中<c:out>标签输出--%>
<c:out value="${sessionScope.username}"></c:out>
<jsp:useBean id="stu" class="exp5.student"/>
 <%--通过<c:set>标签给javaBean对象的age属性设值--%>
 <c:set value="16" property="age" target="${stu}"/>
 <%--输出javaBean对象的属性值--%>
 年龄：<c:out value="${stu.age}"></c:out>
</body>
</html>