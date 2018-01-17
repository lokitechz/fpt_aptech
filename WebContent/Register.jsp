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
<link href="${pageContext.request.contextPath}/css/prettyPhoto.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/main.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/responsive.css"
	rel="stylesheet">
<link rel="shortcut icon" href="images/ico/favicon.ico">
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<section>
	<div class="container">
		<div
			class="col-lg-6 col-md-6 col-sm-12 col-lg-offset-3 col-md-offset-3">
			<div class="signup-form">
				<h2>Đăng kí thành viên</h2>
				<form action="#">
					<input type="email" placeholder="Nhập địa chỉ email" required>
					<input type="password" placeholder="Nhập mật khẩu" required>
					<button type="submit" class="btn btn-default">Đăng ký</button>
				</form>
			</div>
		</div>
	</div>
	</section>
	<jsp:include page="Footer.jsp"></jsp:include>



	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/price-range.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.prettyPhoto.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>