<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>彩色颜色条纹显示</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
</head>
<body>
<%
String [] colors ={"Green","Cyan","Blank","Red","Yellow","Pink"};
for(int i=0;i<colors.length;i++){
%>
<hr color="<%=colors[i] %>"></hr>
<% }%>

</body>
</html>