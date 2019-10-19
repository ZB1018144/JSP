<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP+MySQL更新数据</title>
</head>
<body>
	<div style="margin: auto; width: 80%">
		<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8"
			user="root" password="" />
		<!-- 执行更新语句 -->
		
		<c:set var="empId" value="1" />
		<sql:update dataSource="${connection}" var="count">
         UPDATE employees SET name='李家诚' WHERE id=?
         <sql:param value = "${empId}" />
		</sql:update>

		<c:set var="empId" value="2" />
		<sql:update dataSource="${connection}" var="count">
         UPDATE employees SET salary='19999.99' WHERE id=?
         <sql:param value="${empId}" />
		</sql:update>

		<sql:query dataSource="${connection}" var="result">
           SELECT * FROM employees;
           </sql:query>
		<table border="1" width="100%">
			<tr>
				<td>编号</td>
				<td>名称</td>
				<td>薪水</td>
				<td>地址</td>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.id}" /></td>
					<td><c:out value="${row.name}" /></td>
					<td><c:out value="${row.salary}" /></td>
					<td><c:out value="${row.address}" /></td>
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
</html>