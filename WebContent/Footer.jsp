<%@page import="com.aptech.shop.model.Category"%>
<%@page import="com.aptech.shop.dao.CategoryDao"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<footer id="footer">
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<div class="companyinfo">
						<h2>
							<span>e</span>
							-shopper
						</h2>
						<p>Nơi mua sắm quần áo tiện lợi cho mọi người</p>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/iframe1.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/iframe2.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/iframe3.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>

						</div>
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/iframe4.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>

						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="address">
						<img src="images/home/map.png" alt="" />
						<p>Số 2 ngõ 61 Giang Văn Minh,Hà Nội,Việt Nam</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="footer-widget">
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>Dịch vụ</h2>
						<ul class="nav nav-pills nav-stacked">
							<li>
								<a href="#">Hỗ trợ trực tuyến</a>
							</li>
							<li>
								<a href="#">Liên hệ với chúng tôi</a>
							</li>
							<li>
								<a href="#">Địa chỉ</a>
							</li>
							<li>
								<a href="#">Các câu hỏi thường gặp</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>Danh mục</h2>
						<ul class="nav nav-pills nav-stacked">
							<%
								CategoryDao categoryDao = new CategoryDao();
								for (Category c : categoryDao.getListCategory()) {
							%>
							<li>
								<a href=""><%=c.getCateName()%></a>
							</li>
							<%
								}
							%>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>Policies</h2>
						<ul class="nav nav-pills nav-stacked">
							<li>
								<a href="#">Thời gian hoạt động</a>
							</li>
							<li>
								<a href="#">Chính sách cá nhân</a>
							</li>
							<li>
								<a href="#">Chính sách hoàn tiền</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>Về chúng tôi</h2>
						<ul class="nav nav-pills nav-stacked">
							<li>
								<a href="#">Thông tin</a>
							</li>
							<li>
								<a href="#">Cơ hội nghề nghiệp</a>
							</li>
							<li>
								<a href="#">Các cửa hàng</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3 col-sm-offset-1">
					<div class="single-widget">
						<h2>Dành cho những tín đồ thời trang</h2>
						<form action="#" class="searchform">
							<input type="text" placeholder="Địa chỉ mail của bạn" />
							<button type="submit" class="btn btn-default">
								<i class="fa fa-arrow-circle-o-right"></i>
							</button>
							<p>Nhận thông tin về những ưu đãi mới nhất</p>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<p class="pull-left">Copyright &copy Dương Hoàng Giang 2017. All
					rights reserved.</p>
				<p class="pull-right">
					Designed by
					<span>
						<a target="_blank" href="https://www.facebook.com/vuachom94">Dương
							Hoàng Giang</a>
					</span>
				</p>
			</div>
		</div>
	</div>
</footer>
<!--/Footer-->