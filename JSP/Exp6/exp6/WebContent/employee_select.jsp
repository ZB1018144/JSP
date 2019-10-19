<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP+MySQL查询数据</title>
</head>
<body>
	<div style="margin: auto; width: 80%">
		<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/testdb" user="root" password="" />
		<sql:query dataSource="${connection}" var="result">
         SELECT * FROM employee WHERE JOB="clerk";
         </sql:query>
		<table border="1" width="100%">
			<tr>
				<td>编号</td>
				<td>姓名</td>
				<td>职位</td>
				<td>薪水</td>
				<td>部门</td>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.EMP_ID}" /></td>
					<td><c:out value="${row.EMP_NAME}" /></td>
					<td><c:out value="${row.JOB}" /></td>
					<td><c:out value="${row.SALARY}" /></td>
					<td><c:out value="${row.DEPT}" /></td>
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
</html>