<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IOut Example</title>
</head>
<body>
<h2>out对象的使用</h2>
<% 
  out.print("学习使用out对象");
  int buffer = out.getBufferSize();
  int available = out.getRemaining();
 %>
 <br>
 out对象的类型为：<%= out.getClass().getName() %><br>
 BufferSize=<%= buffer %><br>
 Available=<%= available %>
</body>
</html>