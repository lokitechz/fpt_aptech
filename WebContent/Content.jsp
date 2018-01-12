<%@page import="com.aptech.shop.model.Product"%>
<%@page import="com.aptech.shop.dao.ProductDao"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!-- Phần nội dung ở giữa  -->
<div class="col-sm-9 padding-right">
	<div class="features_items">
		<h2 class="title text-center">Features Items</h2>
		<%
			ProductDao proDao = new ProductDao();
			for (Product p : proDao.getListProductByCategory(6)) {
		%>
		<div class="col-sm-4">
			<div class="product-image-wrapper">
				<div class="single-products">
					<div class="productinfo text-center">

						<img src="<%=p.getProductImage()%>" alt="" />
						<h2>
							$<%=p.getProductPrice()%>
						</h2>
						<p>
							<a href="DetailProduct.jsp?productId=<%=p.getProductId()%>"><%=p.getProductName()%></a>
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

	<!-- Sản phẩm theo danh mục -->
	<div class="category-tab">
		<!--Tab danh mục-->
		<div class="col-sm-12">
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="#tshirt" data-toggle="tab">Quần áo Nam</a>
				</li>
				<li>
					<a href="#blazers" data-toggle="tab">Quần áo Nữ</a>
				</li>
				<li>
					<a href="#sunglass" data-toggle="tab">Quần áo trẻ em</a>
				</li>
				<li>
					<a href="#kids" data-toggle="tab">Phụ kiện</a>
				</li>
				<li>
					<a href="#poloshirt" data-toggle="tab">Giày</a>
				</li>
			</ul>
		</div>
		<div class="tab-content">
			<div class="tab-pane fade active in" id="tshirt">
				<%
					for (Product p : proDao.getListProductByCategory(1)) {
				%>
				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="<%=p.getProductImage()%>" alt="" />
								<h2>
									$<%=p.getProductPrice()%></h2>
								<p><%=p.getProductName()%></p>
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

			<div class="tab-pane fade" id="blazers">
				<%
					for (Product p : proDao.getListProductByCategory(2)) {
				%>
				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="<%=p.getProductImage()%>" alt="" />
								<h2>
									$<%=p.getProductPrice()%></h2>
								<p><%=p.getProductName()%></p>
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

			<div class="tab-pane fade" id="sunglass">
				<%
					for (Product p : proDao.getListProductByCategory(3)) {
				%>
				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="<%=p.getProductImage()%>" alt="" />
								<h2>
									$<%=p.getProductPrice()%></h2>
								<p><%=p.getProductName()%></p>
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

			<div class="tab-pane fade" id="kids">
				<%
					for (Product p : proDao.getListProductByCategory(4)) {
				%>
				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="<%=p.getProductImage()%>" alt="" />
								<h2>
									$<%=p.getProductPrice()%></h2>
								<p><%=p.getProductName()%></p>
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

			<div class="tab-pane fade" id="poloshirt">
				<%
					for (Product p : proDao.getListProductByCategory(5)) {
				%>
				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="<%=p.getProductImage()%>" alt="" />
								<h2><%=p.getProductPrice()%></h2>
								<p><%=p.getProductName()%></p>
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

	<!-- Giới thiệu sản phẩm hot -->
	<div class="recommended_items">
		<h2 class="title text-center">recommended items</h2>
		<div id="recommended-item-carousel" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="item active">
					<%
						for (Product p : proDao.getListProductByCategory(7)) {
					%>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="<%=p.getProductImage()%>" />
									<h2>
										$<%=p.getProductPrice()%></h2>
									<p><%=p.getProductName()%></p>
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

				<div class="item">
					<%
						for (Product p : proDao.getListProductByCategory(8)) {
					%>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="<%=p.getProductImage()%>" />
									<h2>
										$<%=p.getProductPrice()%></h2>
									<p><%=p.getProductName()%></p>
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
			<a class="left recommended-item-control"
				href="#recommended-item-carousel" data-slide="prev">
				<i class="fa fa-angle-left"></i>
			</a>
			<a class="right recommended-item-control"
				href="#recommended-item-carousel" data-slide="next">
				<i class="fa fa-angle-right"></i>
			</a>
		</div>
	</div>
</div>



