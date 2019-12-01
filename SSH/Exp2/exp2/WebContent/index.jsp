<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>网站计数器</title>
</head>
<body>
</body>
<script>
    (function () {
        window.location.href = "${pageContext.request.contextPath}/CounterAction"
    })()
</script>
</html>