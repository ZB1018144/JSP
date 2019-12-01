<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><s:text name="LoginTitle"></s:text></title>
</head>
<body>
	<s:form action="CheckAction" method="POST">
		<s:textfield name="name" key="loginName" size="20" />
		<s:password name="password" key="loginPassword" size="20" />
		<s:submit key="loginSubmit" />
	</s:form>
</body>
</html>