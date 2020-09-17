<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%--importing spring supplied JSP tag lib --%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>${requestScope.mesg}</h4>
	<h5>User Details : ${requestScope.userDetails}</h5>
	
</body>
</html>