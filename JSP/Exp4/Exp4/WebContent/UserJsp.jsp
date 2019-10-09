<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="user" class="cn.cslg.Exp4_ZB1018144.User"></jsp:useBean>
    <jsp:setProperty property="name" name="user" value="anne"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>显示姓名</title>
</head>
<body>
UserName:<jsp:getProperty name="user" property="name"></jsp:getProperty>
</body>
</html>