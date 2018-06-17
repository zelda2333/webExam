<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head><title>Using URL JSTL</title></head>
<body>
<h3>这是包含页面中的内容</h3>

<c:import url="included.jsp" charEncoding = "gb2312">
   <c:param name="userName" value="Harry Porter" />
</c:import>

<br>
 
</body>
</html>