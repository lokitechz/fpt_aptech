<%@page import="com.aptech.shop.model.Brand"%>
<%@page import="com.aptech.shop.dao.BrandDao"%>
<%@page import="com.aptech.shop.model.Category"%>
<%@page import="com.aptech.shop.dao.CategoryDao"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<div class="col-sm-3">
	<div class="left-sidebar">
		<!-- Danh mục sản phẩm -->
		<h2>Danh mục sản phẩm</h2>
		<div class="panel-group category-products" id="accordian">
			<%
				CategoryDao categoryDao = new CategoryDao();
				for (Category c : categoryDao.getListCategory()) {
			%>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a href="Product.jsp?CategoryId=<%=c.getCateId()%>&pages=1"><%=c.getCateName()%></a>
					</h4>
				</div>
			</div>
			<%
				}
			%>
		</div>

		<!-- Danh mục thương hiệu -->
		<div class="brands_products">
			<h2>Brands</h2>
			<div class="brands-name">
				<ul class="nav nav-pills nav-stacked">
					<%
						BrandDao brandDao = new BrandDao();
						for (Brand b : brandDao.getListBrand()) {
					%>
					<li>
						<a href=""><%=b.getBrandName()%></a>
					</li>
					<%
						}
					%>
				</ul>
			</div>
		</div>

		<!-- Quảng cáo -->
		<div class="shipping text-center">
			<img src="images/home/shipping.jpg" alt="Quảng cáo" />
		</div>
	</div>
</div>




