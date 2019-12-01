<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><s:text name="successPage"></s:text></title>
</head>
<body>
 <hr>
    <s:text name="loginName"/>:<s:property value="name"/><br>
    <s:text name="loginPassword"/>:<s:property value="password"/>
</body>
</html>