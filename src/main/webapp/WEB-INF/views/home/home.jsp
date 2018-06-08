<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<div class="page-header header-filter clear-filter purple-filter" data-parallax="true" style="background-image: url(&quot;./assets/img/bg2.jpg&quot;); transform: translate3d(0px, 0px, 0px);">
    <div class="container">
        
    </div>
</div>
<div class="main main-raised">
<div class="section section-basic">
        <div class="container">
        <h1>
		Hello world!  
		</h1>

		<P>  The time on the server is ${serverTime}. </P>

		<c:forEach var="u" items="${userList}">
			유저넘버 : ${u.userNo}<br>
			유저 아이디 : ${u.userId}<br>
			유저 이름 : ${u.userName}<br>
			유저 포인트 : ${u.point}<br>
			유저 가입날짜 : ${u.userReg}<br>
			유저 테이블 종류 번호 : ${u.tableNo}<br>
			유저 권한 : ${u.roleNo}<br>
			<br><br><br>
		</c:forEach>
           
        </div>
    </div>
 </div>