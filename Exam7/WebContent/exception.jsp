<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exception Example</title>
</head>
<body>
<p>exception变量使用示例</p>
<hr size='0'>
<font color="#ff0000" size="-1">
发生了下面错误<br>
<% 
  exception.printStackTrace();
  StringWriter sout = new StringWriter();
  PrintWriter pout = new PrintWriter(sout);
  exception.printStackTrace(pout);
 %>
 <pre>
   <%= sout.toString() %>
 </pre>
</body>
</html>