<%@page import="com.aptech.shop.dao.CategoryDao"%>
<%@page import="com.aptech.shop.model.Category"%>
<%@page import="com.aptech.shop.model.Product"%>
<%@page import="com.aptech.shop.dao.ProductDao"%>
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
	<%
		ProductDao proDao = new ProductDao();
		String cateId = "";
		if (request.getParameter("CategoryId") != null) {
			cateId = request.getParameter("CategoryId");
		}
	%>
	<jsp:include page="Header.jsp"></jsp:include>
	<jsp:include page="Banner.jsp"></jsp:include>
	<section>
	<div class="container">
		<div class="row">
			<jsp:include page="MenuLeft.jsp"></jsp:include>
			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<h2 class="title text-center">List Items</h2>
					<%
						for (Product p : proDao.getListProductByCategory(Long.parseLong(cateId))) {
					%>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="<%=p.getProductImage()%>" alt="" />
									<h2>
										$<%=p.getProductPrice()%></h2>
									<p>
										<a href="DetailProduct.jsp?productId=<%=p.getProductId()%>"></a>
										<%=p.getProductName()%>
									</p>
									<a href="#" class="btn btn-default add-to-cart">
										<i class="fa fa-shopping-cart"></i>
										Thêm vào giỏ hàng
									</a>
								</div>
							</div>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</div>
	</section>
	<jsp:include page="Footer.jsp"></jsp:include>



	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
</body>
</html>