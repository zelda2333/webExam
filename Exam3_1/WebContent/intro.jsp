<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p class="title">New Member</p>
	<form action="DealWithServlet" method="post">
	<p><span>Name</span><input type="text" name="name"></p>
	<p><span>Email</span> <input type="email" name="email"></p>
	<p><span>Address</span>  <input type="text" name="address"></p>
	<span>Intro</span><textarea name="intro"></textarea>
	<p><input type="submit" value="Submit information"></p>	
	</form>
</body>
</html>