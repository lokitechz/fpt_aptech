<%@page import="com.aptech.shop.model.Category"%>
<%@page import="com.aptech.shop.dao.CategoryDao"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!--header-->
<header id="header">
	<!-- header top -->
	<div class="header_top">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li>
								<a href="#">
									<i class="fa fa-phone"></i>
									01689363453
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-envelope"></i>
									giangdhd00211@fpt.edu.vn
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li>
								<a href="https://www.facebook.com/vuachom94">
									<i class="fa fa-facebook"></i>
								</a>
							</li>
							<li>
								<a href="https://www.instagram.com/">
									<i class="fa fa-instagram"></i>
								</a>
							</li>
							<li>
								<a href="https://plus.google.com/?hl=vi">
									<i class="fa fa-google-plus"></i>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header_top-->

	<!--header-middle-->
	<div class="header-middle">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="Home.jsp">
							<img src="images/home/logo.png" alt="Logo" />
						</a>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<li>
								<a href="#">
									<i class="fa fa-user"></i>
									Tài khoản
								</a>
							</li>
							<li>
								<a href="cart.html">
									<i class="fa fa-shopping-cart"></i>
									Giỏ hàng
								</a>
							</li>
							<li>
								<a href="login.html">
									<i class="fa fa-lock"></i>
									Đăng nhập
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->

	<!--header-bottom-->
	<div class="header-bottom">
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li>
								<a href="Home.jsp" class="active">Trang chủ</a>
							</li>
							<li class="dropdown">
								<a href="#">
									Danh mục sản phẩm
									<i class="fa fa-angle-down"></i>
								</a>
								<ul role="menu" class="sub-menu">
									<%
										CategoryDao categoryDao = new CategoryDao();
										for (Category c : categoryDao.getListCategory()) {
									%>
									<li>
										<a href="Product.jsp?CategoryId=<%=c.getCateId()%>&pages=1"><%=c.getCateName()%></a>
									</li>
									<%
										}
									%>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="search_box pull-right">
						<input type="text" placeholder="Tìm kiếm" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-bottom-->
</header>
<!--/header-->