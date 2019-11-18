<%--
  Created by IntelliJ IDEA.
  User: Alice
  Date: 2019/11/18
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>更新信息</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<form action="UpdateServlet" method="post">
    <h3 align="center">更新信息</h3>
    <div class="form-group">
        <label for="exampleInputid">编号:</label>
        <input type="text" class="form-control"
               id="exampleInputid" name="id"  value="${item.id}" readonly>
    </div>
    <div class="form-group">
        <label for="exampleInputBrand">品牌</label>
        <input type="text" class="form-control"
               id="exampleInputBrand" name="brand" value="${item.brand}" />
    </div>
    <div class="form-group">
        <label for="exampleInputType">型号</label>
        <input type="text" class="form-control"
               id="exampleInputType" name="type" value="${item.type}">
    </div>
    <div class="form-group">
        <label for="exampleInputprice">价格</label>
        <input type="text" class="form-control"
               id="exampleInputprice" name="price" value="${item.price}">
    </div>
    <button type="submit" class="btn btn-default">提交</button>
    <button type="reset" class="btn btn-default" onclick="history.go(-1)">返回</button>
</form>
</body>
</html>
