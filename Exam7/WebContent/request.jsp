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
  String remoteAddr = request.getRemoteAddr();
  String remoteHost = request.getRemoteHost();
  int serverPort = request.getServerPort();
 %>
 你的IP地址为：<%=remoteAddr %><br>
你的主机名为：<%=remoteHost %><br>
服务器的端口号为：<%=serverPort %><br>
</body>
</html>