<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>���ʽ��صı�ǩ</title>
</head>
<body>
<h2>ʹ��<c:out value=" <c��out> <c��set> <c��remove>" />������</h2>
<hr>
<c:set scope="page" var="number">
	<c:out value="${5}"/>
</c:set>
<br>
<c:set scope="request" var="number">
	<c:out value="${15}"/>
</c:set>
<br>
<c:set scope="session" var="number">
	<c:out value="${25}"/>
</c:set>
��ͬ�������number�����ĳ�ʼֵ</p>
pageScope.number =<c:out value="${pageScope.number}" default="No Data" />
<br>
requestScope.number =<c:out value="${requestScope.number}" 
default="No Data" />
<br>
sessionScope.number =<c:out value="${sessionScope.number}" 
default="No Data" />
<br>
<p><c:out value='ִ��<c:remove var="number" />֮��'/></p>
<c:remove var="number" scope="request" />
pageScope.number =<c:out value="${pageScope.number}" 
default="No Data" />
<br>
requestScope.number =<c:out value="${requestScope.number}" 
default="No Data" />
<br>
sessionScope.number =<c:out value="${sessionScope.number}" 
default="No Data" />
<br>
</body>
</html>