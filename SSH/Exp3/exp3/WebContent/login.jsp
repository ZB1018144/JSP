
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<script type="text/javascript">
	function register() {
		//获取页面的第一个表单
		targetForm = document.forms[0];
		//动态修改表单的action属性
		targetForm.action = "register";
		document.forms[0].submit();
	}
</script>
</head>
<body>
	<form action="login" method="post">
		<div class="modal-dialog" style="margin-top: 10%;">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title text-center text-info" id="myModalLabel">基于SH的登录和注册系统</h2>
				</div>
				<div class="modal-body" id="model-body">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="用户名"
							name="userName" autocomplete="off">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="密码"
							name="password" autocomplete="off">
					</div>
				</div>
				<div class="modal-footer">
					<div class="form-group">
						<button type="submit" class="btn btn-primary form-control">登录</button>
					</div>
					<div class="form-group">
						<button type="button" class="btn btn-default form-control"
							onclick="register();">注册</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
