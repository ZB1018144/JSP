<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Map</title>
</head>
<body>
<%
  Map<String,String> map = new HashMap<String,String>();
  map.put("百度","http://www.baidu.com");
  map.put("雅虎", "http://cn.yahoo.com");
  map.put("谷歌", "http://www.google.com");
  request.setAttribute("map", map);
%>
<table border="1px" width="100%">
  <c:forEach var="entry" items="${map}">
  <!--利用forEach进行遍历输出-->
 <tr>
  <td><c:out value="${entry.key}"></c:out></td>
  <td><c:out value="${entry.value}"></c:out></td>
  </tr>
</c:forEach>
</table>
</body>
</html>