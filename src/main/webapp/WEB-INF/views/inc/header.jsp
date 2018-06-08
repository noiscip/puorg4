<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
	<div class="container">
		<div class="navbar-translate">
			<a class="navbar-brand" href="<%=request.getContextPath()%>/home.ps"> picsion </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span> 
				<span class="navbar-toggler-icon"></span> 
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav ml-auto">
				<c:choose>
					<c:when test="${sessionScope.user eq null}">
						<li class="nav-item">
							<a class="nav-link" href="<%=request.getContextPath()%>/user/register.ps" onclick="scrollToDownload()"> 
								<i class="material-icons">cloud_download</i> 회원가입
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<%=request.getContextPath()%>/user/login.ps" onclick="scrollToDownload()"> 
								<i class="material-icons">cloud_download</i>로그인
							</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="nav-item">
							<a class="nav-link" href="#" onclick="scrollToDownload()"> 
								<i class="material-icons">cloud_download</i> ${sessionScope.user.userName}
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<%=request.getContextPath()%>/user/logout.ps" onclick="scrollToDownload()"> 
								<i class="material-icons">cloud_download</i> 로그아웃
							</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>

<!---------------------------------------------------------------------------------------->

