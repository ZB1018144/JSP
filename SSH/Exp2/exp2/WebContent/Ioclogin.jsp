<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>使用IOC方式构建用户登录系统</title>
 <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
	<form action="IocAction" method="post">
		<div class="form-group">
			<label for="exampleInputUser1">用户名:</label> <input type="text"
				class="form-control" name="username" id="exampleInputUser1"
				placeholder="Username">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">密码:</label> <input type="password"
				class="form-control" name="password" id="exampleInputPassword1"
				placeholder="Password">
		</div>
		<button type="submit" class="btn btn-default">登录</button>
	</form>
</body>
</html>