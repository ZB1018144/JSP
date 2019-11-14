
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Action中的动态方法调用</title>
        <script type="text/javascript">
            function register(){
                //获取页面的第一个表单
                targetForm = document.forms[0];
                //动态修改表单的action属性
                targetForm.action = "RegisterAction";
                document.forms[0].submit(); 
            }       
        </script>  
    </head>
    <body>
        <table width="360" align="center">
             <form  action="LoginAction">
             <tr>
		<td>用户名：</td>
		<td><input type="text" name="username" size="26"/></td>
             </tr>
             <tr>
		<td>密&nbsp;&nbsp;码：</td>
		<td><input type="password" name="password" size="26"/></td>
             </tr>
             <tr>
		<td><input type="submit" value="登录"/></td>
		<td><input type="submit" value="注册" onclick="register();"/></td>
            </tr>
            </form>
        <table>  
    </body>
</html>
