<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>文件上传成功</title>
</head>
<body>
<h3>文件上传成功</h3>
<hr/>
文件名：<s:property value="+filename"/><br/>
<s:property value="uploadFileName"/><br/>
<img src="<s:property value="'../save/+uploadFileName"/>"/>
</body>
</html>
