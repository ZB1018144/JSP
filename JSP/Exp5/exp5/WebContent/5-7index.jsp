<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.DriverManager" %>
    <%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
</head>
<body>
<%
     try{
      
    	Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
    	String url="jdbc:mysql://localhost:3306/test";  
    	String username="root";
        String pas="";
        Connection con=DriverManager.getConnection(url, username, pas);
        if(con==null){
    		out.println("数据库连接失败！！！");
    		
    	}
    	else {
    		out.println("数据库连接成功！！！!");
    	}
       }catch(ClassNotFoundException e){
    	          e.printStackTrace();
    	     }
    	 %>
</body>
</html>