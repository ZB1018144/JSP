<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>注册页面</title>
</head>
<body>
   <hr/>
<s:form  action="register" method="POST">
 <h3 align="center">请输入注册信息...</h3>
    <table border="1" align="center">
        <tr>
            <td><s:textfield name="userName" label="姓名" size="16"/></td>
        </tr>
        <tr>
            <td><s:password name="userPassword" label="密码" size="18"/></td>
        </tr>
        <tr>
            <td><s:textfield name="userAge" label="年龄" size="16"/></td>
        </tr>
        <tr>
            <td><s:textfield name="userTelephone" label="电话" size="16"/></td>
        </tr>
        <tr>
            <td><s:submit value="提交"/></td>
        </tr>
    </table>
</s:form>
</body>
</html>