<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
	request.setCharacterEncoding("utf-8");
	%>
    <jsp:useBean id="user" class="cn.cslg.Exp4_ZB1018144.Login"></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>
    <%
     String [] str=user.getHobbies();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>显示用户填写的注册信息</title>
</head>
<body>
    <p>用户昵称：${user.name}</p>
    <p>密码：${user.password}</p>
	<p>性别：${user.sex }</p>
	<p>爱好：<%
	for(int i=0;i<str.length;i++){
	     %><%=str[i]%>
	     <%
	     }
	     %>
	</p>
	<input type="button" value="返回" onclick="javascript:history.go(-1);">
</body>
</html>