<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showBirth</title>
</head>
<body>
<%!
//声明方法,从身份证中截取生日
public String getBirthday(String id){
	 String result="";
	 if(id.length()==18){
		   String year=id.substring(6,10);//6到9位
	        String month=id.substring(10,12);//10到11位
	        String day=id.substring(12,14);//12到13位
	        result=year+"-"+month+"-"+day;
	 }
	 else{
		 result="录入身份证不合法";
	 }
	 return result;
}
%>
<table border="1">
<tr bgcolor="blue">
<td align="center">身份证</td>
<td align="center">生日</td>
</tr>
<tr>
<td>010020199601026929</td>
<td><%=getBirthday("010020199601026929") %></td>
</tr>
<tr>
<td>010020199711126928</td>
<td><%=getBirthday("010020199711126928")%></td>
</tr>
</table>
</body>
</html>