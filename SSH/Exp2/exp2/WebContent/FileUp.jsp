<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>文件上传</title>
</head>
<body>
	<!-- enctype的属性值必须为multipart/form-data  -->
	<s:form action="upload" method="post"
		enctype="multipart/form-data">
		<s:textfield name="filename" label="文件名" />
		<br />
		<s:file name="upload" label="选择文件" />
		<br />
		<s:submit value="上传" />
	</s:form>
</body>
</html>