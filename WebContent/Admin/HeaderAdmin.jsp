<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="Admin.jsp">
			<b>E</b>
			-Shopper Admin
		</a>
	</div>

	<ul class="nav navbar-top-links navbar-right">
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li>
					<a href="#">
						<i class="fa fa-user fa-fw"></i>
						Thông tin tài khoản
					</a>
				</li>
				<li class="divider"></li>
				<li>
					<a href="">
						<i class="fa fa-sign-out fa-fw"></i>
						Logout
					</a>
				</li>
			</ul>
		</li>
	</ul>

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>

				</li>
				<li>
					<a href="Admin.jsp">
						<i class="fa fa-dashboard fa-fw"></i>
						Quản trị
					</a>
				</li>
				<li>
					<a href="ManagerProduct.jsp">
						<i class="fa fa-list fa-fw"></i>
						Danh sách sản phẩm
					</a>
				</li>
			</ul>
		</div>
	</div>
</nav>