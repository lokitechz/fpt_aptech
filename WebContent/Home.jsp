<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Shopping online</title>

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/main.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/responsive.css"
	rel="stylesheet">
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<jsp:include page="Banner.jsp"></jsp:include>
	<section>
	<div class="container">
		<div class="row">
			<jsp:include page="MenuLeft.jsp"></jsp:include>
			<jsp:include page="Content.jsp"></jsp:include>
		</div>
	</div>
	</section>
	<jsp:include page="Footer.jsp"></jsp:include>



	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/price-range.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>