<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		  <style>
		  	  footer {
			  	  background-color:  #e5faf5;
			  }
			  footer a{
			  	  color : #3e9c9d
			  }		
			  footer p{
			  	  color : #3e9c9d;
			  	  margin : 0px 0px 0px 0px;
			  }		  
		  </style>
		  <script type="text/javascript">
		  //top으로ws
		  function topFunction() {
			    document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
			}
		  </script>
	</head>
		
	<body>
	<!-- footer -->
		<footer class="text-center">
			<form action="amazontest.ps" enctype="multipart/form-data" method="post">
				
				<input type="file" name="filePath">
				
				<input type="submit" class="btn btn-primary btn-round" value="보내기">
			</form>
		  <a title="Go to top" onclick="topFunction()">
		   <i class="fas fa-angle-up fa-2x"></i>
		  </a><br><br>
		  <p>CSS ⓒ DB</p> 
		</footer>
	</body>
</html>