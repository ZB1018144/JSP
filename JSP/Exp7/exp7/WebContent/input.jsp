<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>输入三条边</title>
</head>
<body>
    <font color="red"> ${sessionScope.error } </font>
	<form action="TriangleServlet" method="post">
		<h2>请输入三角形的三条边的长度</h2>
		<p>
			请输入第一条边长度：<input type="text" name="s1">
		</p>
		<p>
			请输入第二条边长度：<input type="text" name="s2">
		</p>
		<p>
			请输入第三条边长度：<input type="text" name="s3">
		</p>
		<p>
			<input type="submit" value="计算面积">
		</p>
	</form>

</body>
</html>