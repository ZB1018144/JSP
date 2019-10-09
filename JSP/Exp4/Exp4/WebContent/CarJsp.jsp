<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="car" class="cn.cslg.Exp4_ZB1018144.Car"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>显示汽车</title>
</head>
<body>
<%
car.setColor("red");
car.setStatus(true);
%>
汽车颜色：<jsp:getProperty property="color" name="car"/><br>
是否安装了空调：<jsp:getProperty property="status" name="car"/>
</body>
</html>