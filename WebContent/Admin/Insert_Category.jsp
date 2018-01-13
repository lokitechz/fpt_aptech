<%@page import="com.aptech.shop.dao.CategoryDao"%>
<%@page import="com.aptech.shop.model.Category"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>E-Shopper-Admin Page</title>

<!-- Bootstrap Core CSS -->
<link href="${root}/css/bootstrap.min.css" rel="stylesheet" />

<link href="${root}/css/metisMenu.min.css" rel="stylesheet" />

<link href="${root}/css/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet" />

<link href="${root}/css/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet" />

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

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Thông tin danh mục</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Thêm thông tin danh mục</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<form role="form"
										action="${pageContext.request.contextPath}/ManagerCategoryServlet"
										method="post">
										<div class="form-group">
											<label>Tên danh mục</label>
											<input class="form-control"
												placeholder="Nhập tên của danh mục" name="CateName" required>
										</div>
										<button type="submit" class="btn btn-success">
											Lưu danh mục
											<i class="fa fa-floppy-o" aria-hidden="true"></i>
										</button>
										<button type="reset" class="btn btn-default">
											Reset dữ liệu
											<i class="fa fa-refresh" aria-hidden="true"></i>
										</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- jQuery -->
	<script src="${root}/js/jquery.js"></script>
	<!-- Bootstrap JS -->
	<script src="${root}/js/bootstrap.min.js"></script>
	<!-- Metis Menu Plugin JavaScript -->
	<script src="${root}/js/metisMenu.min.js"></script>
	<!-- DataTables JavaScript -->
	<script src="${root}/js/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="${root}/css/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script
		src="${root}/css/datatables-responsive/dataTables.responsive.js"></script>
	<!-- Custom JS -->
	<script src="${root}/js/sb-admin-2.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>

</body>
</html>




