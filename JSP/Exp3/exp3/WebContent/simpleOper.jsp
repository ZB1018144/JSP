<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! String result=""; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>简易计算器</title>
</head>
<body>
<form action="" >
<h1>我的计算器</h1>
<hr size="2" color="black">
<p>请输入第一个数：<input type="text" name="n1"></p>
<p>请选择运算方式：<select name="oper">
<option value="+" selected="selected">+</option>
<option value="-">-</option>
<option value="*">*</option>
<option value="/">/</option>
</select>
</p>
<p>请输入第二个数：<input type="text" name="n2"></p>
<button type="submit" name="sub">计算</button>
<button type="reset">重置</button>
</form>
<%
if(request.getParameter("oper")!=null){
	if(request.getParameter("n1").matches("^[0-9]*$")&&request.getParameter("n2").matches("^[0-9]*$")){
		switch(request.getParameter("oper")){
		case "+":result=String.valueOf(Double.parseDouble(request.getParameter("n1"))+Double.parseDouble(request.getParameter("n2")));
		break;
		case "-":result=String.valueOf(Double.parseDouble(request.getParameter("n1"))-Double.parseDouble(request.getParameter("n2")));
		break;
		case "*":result=String.valueOf(Double.parseDouble(request.getParameter("n1"))*Double.parseDouble(request.getParameter("n2")));
		break;
		case "/":
			if(request.getParameter("n2").equals("0"))
				result="被除数不能为0";
			else{
			result=String.valueOf(Double.parseDouble(request.getParameter("n1"))/Double.parseDouble(request.getParameter("n2")));}
		break;
	}
}
	else{
		result="参数只能为数字";
	}

}
 %>
 <p>结果：<input type="text" value=<%=result %>></p>
</body>
</html>