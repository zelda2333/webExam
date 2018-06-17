<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head><title>Included Page</title></head>
<body>
<h3>这是被包含页面中的内容</h3>

用户名：<c:out value="${param.userName}" />

</body>
</html>