<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Using Redirect Tag</title></head>
<body>
<h3>ʹ��redirect��ǩ</h3>
<c:redirect url = "import_test.jsp">
  <c:param name = "userName" value = "����.����" />
</c:redirect>>
<c:out value="�ô��벻�ᱻִ��" />
</body>
</html>