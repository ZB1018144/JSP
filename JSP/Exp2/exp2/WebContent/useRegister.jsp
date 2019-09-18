<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>用户注册界面</title>
</head>
<body bgcolor="CCCFF">
<form action="<%=basePath%>userSuccess.jsp" method="post">
<h2 align="center">欢迎注册Web前端编程学习网站</h2>
<table border="1" width="80%" align="center">
<tr>
<td>用户名：</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td>密码：</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td>性别：</td>
<td><input type="radio" value="男" name="sex" checked="checked"/>男
<input type="radio" value="女" name="sex"/>女
</td>
</tr>
<tr>
<td>爱好</td>
<td>
<input type="checkbox" value="唱歌" name="hobbies" />唱歌
<input type="checkbox" value="跳舞" name="hobbies" checked="checked"/>跳舞
<input type="checkbox" value="运动" name="hobbies" />运动
<input type="checkbox" value="阅读" name="hobbies" checked="checked"/>阅读
</td>
</tr>
<tr>
<td>学历</td>
<td>
<select name="education">
<option value="初中">初中</option>
<option value="高中" selected="selected">高中</option>
<option value="大学">大学</option>
<option value="研究生">研究生</option>
</select>
</td>
</tr>
<tr>
<td>备注说明</td>
<td><textarea name="remark" rows="3" cols="30"></textarea></td>
</tr>
<tr>
<td colspan="2" align="center">
<button type="submit">注册</button>
<button type="reset">清空</button>
</td>
</tr>
</table>
</form>
</body>
</html>