<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application example</title>
</head>
<body>
<% 
  int number = 0;
  Integer num =(Integer)application.getAttribute("num");
  if(num==null){
    application.setAttribute("num",new Integer(number));
  }
  else{
    number = num.intValue()+1;
    application.setAttribute("num",new Integer(number));
  }
 %>
 <center><font color="#0000ff" size="5">application对象示例</font>
</center>
<hr>
本页面文件的实际路径是：<br><%=application.getRealPath("application.jsp") %><br>
application对象中变量num的值为：<%=application.getAttribute("num") %>
</body>
</body>
</html>