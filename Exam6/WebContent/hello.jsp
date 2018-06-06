<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorHandler.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
if (name==null){
  throw new RuntimeException("没有指定name 属性。");
}
else{
  // 将字符串name的字符编码转换为汉字编码
  name = new String(name.getBytes("iso-8859-1"),"UTF-8");
}
%>
Hello, <%=name %>
</body>
</html>