<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String str="6";
int number=Integer.parseInt(str);
%>
平方:<%=number*number %>
<%
Cookie cookie = new Cookie("number",str);
cookie.setMaxAge(600);
response.addCookie(cookie);
%>
<a href="cookieP2.jsp">arrive p2</a>
</body>
</html>