<%@page import="com.aptech.shop.model.Brand"%>
<%@page import="com.aptech.shop.dao.BrandDao"%>
<%@page import="com.aptech.shop.model.Product"%>
<%@page import="com.aptech.shop.dao.ProductDao"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Shopping online</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link rel="shortcut icon" href="images/ico/favicon.ico">
<body>
	<!-- Random trường WebID -->
	<%!public int generateRandomNumber(int start, int end) {
		Random random = new Random();
		long fraction = (long) ((end - start + 1) * random.nextDouble());
		return ((int) (fraction + start));
	}%>
	<!-- END -->

	<%
		ProductDao productDao = new ProductDao();
		Product p = new Product();
		String productID = "";
		if (request.getParameter("productId") != null) {
			productID = request.getParameter("productId");
			p = productDao.getProduct(Long.parseLong(productID));
		}
	%>

	<jsp:include page="Header.jsp"></jsp:include>
	<jsp:include page="Banner.jsp"></jsp:include>
	<section>
	<div class="container">
		<div class="row">
			<jsp:include page="MenuLeft.jsp"></jsp:include>
			<div class="col-sm-9 padding-right">
				<div class="product-details">
					<div class="col-sm-5">
						<div class="view-product">
							<img src="<%=p.getProductImage()%>" />
						</div>
						<div id="similar-product" class="carousel slide"
							data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">
									<a href="">
										<img src="images/product-details/similar1.jpg" alt="">
									</a>
									<a href="">
										<img src="images/product-details/similar2.jpg" alt="">
									</a>
									<a href="">
										<img src="images/product-details/similar3.jpg" alt="">
									</a>
								</div>
								<div class="item">
									<a href="">
										<img src="images/product-details/similar1.jpg" alt="">
									</a>
									<a href="">
										<img src="images/product-details/similar2.jpg" alt="">
									</a>
									<a href="">
										<img src="images/product-details/similar3.jpg" alt="">
									</a>
								</div>
							</div>
							<!-- Silde dưới ảnh sản phẩm -->
							<a class="left item-control" href="#similar-product"
								data-slide="prev">
								<i class="fa fa-angle-left"></i>
							</a>
							<a class="right item-control" href="#similar-product"
								data-slide="next">
								<i class="fa fa-angle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-sm-7">
						<div class="product-information">
							<img src="images/product-details/new.jpg" class="newarrival" />
							<h2><%=p.getProductName()%></h2>
							<p>
								Web ID:
								<%=generateRandomNumber(000000, 999999)%></p>
							<img src="images/product-details/rating.png" />
							<span>
								<span>
									$<%=p.getProductPrice()%></span>
								<label>Quantity:</label>
								<input type="text" value="1" />
								<button type="button" class="btn btn-fefault cart">
									<i class="fa fa-shopping-cart"></i>
									Thêm vào giỏ hàng
								</button>
							</span>
							<p>
								<b>Trạng thái:</b>
								Còn hàng
							</p>
							<p>
								<b>Tình trạng sản phẩm:</b>
								Mới
							</p>
							<p>
								<b>Mô tả:</b>
								<%=p.getProductDes()%>
							</p>
						</div>
					</div>
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
