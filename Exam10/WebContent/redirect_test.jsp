<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Using Redirect Tag</title></head>
<body>
<h3>使用redirect标签</h3>
<c:redirect url = "import_test.jsp">
  <c:param name = "userName" value = "哈里.波特" />
</c:redirect>>
<c:out value="该代码不会被执行" />
</body>
</html>