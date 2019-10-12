<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--jsp页面默认是true,EL表达式被忽略--%>
<%@ page isELIgnored="false" %>
<%--定义一个Color对象--%>
<jsp:useBean id="c" class="exp5.Color"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:choose</title>
</head>
<body>
<%--为Color对象设置属性--%>
<c:set value="blue" target="${c}" property="color"/>
<%--获取Color对象的属性值,并根据不同的属性值显示不同的颜色--%>
<c:out value="${c.color}"></c:out>
<c:choose>
    <c:when test="${c.color eq 'red'}">
      <font color=red face="华文行楷">你选择的颜色是:<c:out value="${c.color}"/></font>
      </font>
    </c:when>
      <c:when test="${c.color eq 'blue'}">
       <font color=blue face="华文行楷">你选择的颜色是:<c:out value="${c.color}"/></font>
    </c:when>
     <c:otherwise>
       <font color=green face="华文行楷">你选择的颜色是:<c:out value="${c.color}"/>
    </c:otherwise>
</c:choose>
</body>
</html>