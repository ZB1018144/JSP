<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>校验成功</title>
</head>
<body>
<h2 align="center">校验通过，用户信息如下：</h2>
<hr>
姓名：<s:property value="userName"/><br/>
密码：<s:property value="userPassword"/><br/>
年龄：<s:property value="userAge"/><br/>
电话：<s:property value="userTelephone"/>
</body>
</html>