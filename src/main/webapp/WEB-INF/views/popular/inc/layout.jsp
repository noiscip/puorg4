<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

  	<meta charset="utf-8">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	<title>PICSION</title>
	
  	<link href="<%=request.getContextPath()%>/images/picsionlogo.png" rel="icon" type="image/png">	
	<!--     Fonts and icons     -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<!-- CSS Files -->
	<link href="<%=request.getContextPath()%>/assets/css/material-kit.css?v=2.0.1" rel="stylesheet" />
	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="<%=request.getContextPath()%>/assets/demo/demo.css" rel="stylesheet" />
	
	

</head>

<body class="profile-page sidebar-collapse">
	<!-- header -->
	<tiles:insertAttribute name="header" />

	<!-- content -->
	<!-- <div id="main"> -->
		<tiles:insertAttribute name="content" />
	<!-- </div> -->

	<!-- footer -->
	<tiles:insertAttribute name="footer" />
	<!--   Core JS Files   -->
  <script src="<%=request.getContextPath()%>/assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="<%=request.getContextPath()%>/assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="<%=request.getContextPath()%>/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="<%=request.getContextPath()%>/assets/js/plugins/moment.min.js"></script>
  	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="<%=request.getContextPath()%>/assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="<%=request.getContextPath()%>/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  	<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
  <script src="<%=request.getContextPath()%>/assets/js/material-kit.js?v=2.0.3" type="text/javascript"></script>
  	<!-- WordChart -->
  <script src="https://code.highcharts.com/highcharts.js"></script>
  <script src="https://code.highcharts.com/modules/wordcloud.js"></script>


</body>
</html>