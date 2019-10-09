<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
	request.setCharacterEncoding("utf-8");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>应用EL访问JavaBean属性</title>
</head>
<body>
<form action="LoginSuccess.jsp" method="post">
<table>
<tr>
<td>用户昵称：</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td>确认密码：</td>
<td><input type="password" name="cpassword"/></td>
</tr>
<tr>
<td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
<td><input type="radio" value="男" name="sex"/>男
<input type="radio" value="女" name="sex" checked="checked"/>女
</td>
</tr>
<tr>
<td>爱&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;好:</td>
<td><input type="checkbox" value="体育" name="hobbies" />体育
<input type="checkbox" value="美术" name="hobbies" />美术
<input type="checkbox" value="音乐" name="hobbies" />音乐
<input type="checkbox" value="旅游" name="hobbies" />旅游

</td>
</tr>
<tr>
<td>
<button type="submit">提交</button>
<button type="reset">重置</button>
</td>
</tr>
</table>
</form>
</body>
</html>