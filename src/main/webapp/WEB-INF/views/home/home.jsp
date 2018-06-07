<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<c:forEach var="u" items="${userList}">
	${u.userNo}<br>
	${u.userId}<br>
	${u.userName}<br>
	${u.point}<br>
	${u.userReg}<br>
	${u.blaTypeNo}<br>
	${u.roleNo}<br>
</c:forEach>

<c:forEach var="u" items="${userList}">
	${u.userNo}<br>
	${u.userId}<br>
	${u.userName}<br>
	${u.point}<br>
	${u.userReg}<br>
	${u.blaTypeNo}<br>
	${u.roleNo}<br>
</c:forEach>

<c:forEach var="u" items="${userList}">
	${u.userNo}<br>
	${u.userId}<br>
	${u.userName}<br>
	${u.point}<br>
	${u.userReg}<br>
	${u.blaTypeNo}<br>
	${u.roleNo}<br>
</c:forEach>
</body>
</html>
