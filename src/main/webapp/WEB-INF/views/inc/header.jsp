<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="<%=request.getContextPath()%>/home.ps">WebSiteName</a>
		</div>
		<ul class="nav navbar-nav">
		
				<li><a href="<%=request.getContextPath()%>/user/aa.ps">회원관리</a></li>
		<c:choose>
			<c:when test="${sessionScope.user eq null}">
				<li><a href="<%=request.getContextPath()%>/user/register.ps">회원가입</a></li>
				<li><a href="<%=request.getContextPath()%>/user/login.ps">로그인</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="#">${sessionScope.user.userName}</a></li>
				<li><a href="<%=request.getContextPath()%>/user/logout.ps">로그아웃</a></li>
			</c:otherwise>
		</c:choose>
		
			
		</ul>
	</div>
</nav>

<!---------------------------------------------------------------------------------------->

