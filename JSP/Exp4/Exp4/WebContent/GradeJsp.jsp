<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="sgrade" class="cn.cslg.Exp4_ZB1018144.Grade"></jsp:useBean>
    <jsp:setProperty property="*" name="sgrade"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>获取一名学生五门学科的分数</title>
</head>
<body>
<form action="" method="post">
<p>学生名字：<input type="text" name="name"></p>
<p>语文分数：<input type="text" name="chinese"></p>
<p>数学分数：<input type="text" name="math"></p>
<p>英语分数：<input type="text" name="english"></p>
<p>历史分数：<input type="text" name="history"></p>
<p>地理分数：<input type="text" name="geography"></p>
<input type="submit" value="提交">
</form>
    <%
	if(request.getParameter("chinese")!=null){
	%>
    <p>姓名：<%=request.getParameter("name")%></p>
    <p>总分：${sgrade.chinese+sgrade.math+sgrade.english+sgrade.history+sgrade.geography}</p>
    <p>平均分：${(sgrade.chinese+sgrade.math+sgrade.english+sgrade.history+sgrade.geography)/5}
   <%
	}
	%>
</body>
</html>