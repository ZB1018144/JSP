<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
</head>
<body>
 <center>
    	<s:form action="RegisterAction" method="post">
    		<s:textfield name="username" label="用户名"></s:textfield>
    		<s:password name="password" label="密码"></s:password>
    		<s:textfield name="age" label="年龄"></s:textfield>
    		<s:radio name="sex" label="性别" list="{'男','女' }" value="男"></s:radio>
    		<s:submit value="注册"></s:submit>
    	</s:form>
    </center>

</body>
</html>