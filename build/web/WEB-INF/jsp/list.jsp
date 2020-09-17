<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <h4>${requestScope.mesg}</h4>
    <h4>${requestScope.mesg}</h4>
	
	<table style="background-color: cyan; margin: auto;" border="1">
		<caption> List</caption>
		<c:forEach var="v" items="${requestScope.list}">
			<tr>
				<td>${v.PAN}</td>
				<td>${v.name}</td>
				<td>${v.address}</td>
				<td>${v.DOB}</td>
                                <tr/>
                                </c:forEach>
	</table>
    
    
    
</body>
</html>
                                
