<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:import</title>
</head>
<body>
<%--引入绝对路径的文件--%>
<%--注意:被引入的文件将被解析为html的形式嵌入引用文件--%>
<h1>引入绝对路径的文件</h1>
<c:import url="http://localhost:8080/exp5/5-4-set.jsp" var="file" charEncoding="UTF-8"/>
<blockquote>
<pre>
<c:out value="${file}"></c:out>
</pre>
</blockquote>
<%--引入相对路径的文件--%>
<h1>引入相对路径的文件</h1>
<blockquote>
<pre>
<c:import url="5-4-if.jsp" var="f"/>
<c:out value="${f}"></c:out>
</pre>
</blockquote>
<%--传递参数到被引入文件--%>
<h1>传递参数到被引入文件</h1>
<blockquote>
<pre>
<c:import url="5-4-set.jsp" var="ff">
<c:param name="name" value="jack"/>
</c:import>
<c:out value="${ff}"></c:out>
</pre>
</blockquote>
</body>
</html>