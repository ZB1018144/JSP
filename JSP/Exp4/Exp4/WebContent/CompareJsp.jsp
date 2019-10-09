<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="num" class="cn.cslg.Exp4_ZB1018144.Compare"></jsp:useBean>
    <jsp:setProperty property="*" name="num"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>比较大小</title>
</head>
<body>
<form action="">
  <h1>比较大小</h1>
  <p>第一个数字为：<input type="text" name="number1"/></p>
  <p>第二个数字为：<input type="text" name="number2"/></p>
  <input type="submit" value=比较>
</form>
 <%
   if(request.getParameter("number1")!=null){
 %>
    <p>相等：${num.number1 eq num.number2?"相等":"不相等"}</p>
    <p>不相等：${num.number1 ne num.number2?"不相等":"相等"}</p>
    <p>比较大小：${num.number1 lt num.number2?"第一个数字小":"第二个数字小"}</p>
    <p>比较大小（包含等于）：${num.number1 le num.number2?"第一个数字小于等于第二个数字":"第二个数字小于等于第一个数字"}</p>   
 <%
 }
 %>
</body>
</html>