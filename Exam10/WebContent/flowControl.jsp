<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>JSTL���������̿��Ƶı�ǩ</title>
</head>
<body>  
  <h2>��ǩc:if��ʹ��</h2>
  <c:if test="${param.username == 'Tom'}" var="condition" scope="session">
       ����,Tom
  </c:if>
  <c:if test="${param.username == 'Jerry'}" var="condition" scope="session">
       ����,Jerry
  </c:if>
  <c:if test="${param.username == 'Mike'}" var="condition" scope="session">
       ����,Mike
  </c:if>
  <c:if test="${param.username == 'Ben'}" var="condition" scope="session">
       ����,Ben
  </c:if>
  <h2>��ǩc:choose c:when c:otherwiseʹ��</h2>
  <c:choose>
    <c:when test="${param.username == 'Tom'}">
      ����,Tom
    </c:when>
    <c:when test="${param.username == 'Jerry'}">
      ����,Jerry
    </c:when>
	<c:when test="${param.username == 'Mike'}">
      ����,Mike
    </c:when>
    <c:otherwise>
      ����,Ben	
    </c:otherwise>	
  </c:choose>  
     
</body>
</html>