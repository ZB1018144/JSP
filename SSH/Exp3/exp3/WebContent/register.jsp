<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>基于SH的登录和注册系统</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="js/jquery-3.2.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<h2 class="modal-title text-center text-info">请填写以下注册信息</h2>
<div class="container1">
		<form class="form-horizontal" role="form"
			style="padding: 30px 100px 10px;" action="register"
			method="post">
			<div class="form-group">

				<label for="exampleInputUsername1" class="col-sm-2 control-label">用户名:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name=userName
						id="exampleInputUsername1">
				</div>
			</div>
			<div class="form-group">
				<label for="exampleInputUsername1" class="col-sm-2 control-label">密码:</label>
				<div class="col-sm-4">
					<input type="password" name="password1" class="form-control"
						id="exampleInputPassword1">
				</div>
			</div>
			<div class="form-group">

				<label for="exampleInputPassword2" class="col-sm-2 control-label">再次输入密码:</label>
				<div class="col-sm-4">
					<input type="password" name="password2" class="form-control"
						id="exampleInputPassword2">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button class="btn btn-lg btn-primary  register-btn" type="submit">注册</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="btn btn-lg btn-primary reset-btn" type="reset">清空</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
				</div>

			</div>
		</form>

	</div>
</body>
</html>