<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>E-Shopper - Admin Page</title>

<!-- Bootstrap Core CSS -->
<link href="${root}/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' />

<link href="${root}/css/metisMenu.min.css" rel='stylesheet'
	type='text/css' />

<!-- Custom CSS -->
<link href="${root}/css/sb-admin-2.min.css" rel='stylesheet'
	type='text/css' />

<!-- Custom Fonts -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
</head>
<body>
	<div id="wrapper">
		<jsp:include page="HeaderAdmin.jsp"></jsp:include>
		<jsp:include page="ContentAdmin.jsp"></jsp:include>
	</div>



	<!-- jQuery -->
	<script src="${root}/js/jquery.js"></script>

	<!-- Bootstrap JS -->
	<script src="${root}/js/bootstrap.min.js"></script>

	<!-- Custom JS -->
	<script src="${root}/js/metisMenu.min.js"></script>
	<script src="${root}/js/sb-admin-2.min.js"></script>

</body>
</html>