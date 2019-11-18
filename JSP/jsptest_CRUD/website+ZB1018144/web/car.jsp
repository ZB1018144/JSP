<%--
  Created by IntelliJ IDEA.
  User: Alice
  Date: 2019/11/18
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>website+ZB1018144</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<h3 align="center">
    车辆信息(<a href="insert.jsp">新增车辆</a>)
</h3>
<table border="1" width="70%" class="table table-bordered">
    <tr>
        <td>编号</td>
        <td>品牌</td>
        <td>型号</td>
        <td>价格</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${list}" var="item">
        <tr>
            <td>${item.id }</td>
            <td>${item.brand }</td>
            <td>${item.type}</td>
            <td>${item.price }</td>
            <td><a href="DeleteServlet?id=${item.id}">删除</a> <a
                    href="UpdateServlet?id=${item.id}">更新</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
