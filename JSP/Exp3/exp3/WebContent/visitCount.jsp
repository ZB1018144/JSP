<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>统计页面访问次数</title>
</head>
<body>
<%
if (pageContext.getAttribute("pageCount") == null) {
    pageContext.setAttribute("pageCount",new Integer(0));
}

if(session.getAttribute("sessionCount")==null){
	session.setAttribute("sessionCount", new Integer(0));
}
//信息累加的处理 
    Integer count1 = (Integer)pageContext.getAttribute("pageCount");
    pageContext.setAttribute("pageCount",new Integer(count1.intValue()+1));
	Integer count2 = (Integer)session.getAttribute("sessionCount");
	session.setAttribute("sessionCount",new Integer(count2.intValue()+1));
%>
<b>情况1：网站访问次数：</b>
<%=pageContext.getAttribute("pageCount") %>
<br/>
<br/>
<b>情况2：网站访问次数：</b>
<%=session.getAttribute("sessionCount")%>
</body>
</html>