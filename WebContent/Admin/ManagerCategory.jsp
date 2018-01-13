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
<!-- Tùy biến -->
<link href="${root}/css/customize.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<div id="wrapper">
		<jsp:include page="HeaderAdmin.jsp"></jsp:include>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Danh mục sản phẩm</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							Danh sách danh mục sản phẩm của website
							<a href="${root }/Admin/Insert_Category.jsp"
								class="btn btn-success" onclick="">
								<em class="fa fa-plus"></em>
							</a>
						</div>

						<div class="panel-body">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr>
										<th id="ID">ID</th>
										<th id="Category">Tên danh mục</th>
										<th id="Action">Tùy chọn</th>
									</tr>
								</thead>
								<tbody>
									<%
										CategoryDao categoryDao = new CategoryDao();
										for (Category c : categoryDao.getListCategory()) {
									%>
									<tr class="odd gradeX">
										<td><%=c.getCateId()%></td>
										<td><%=c.getCateName()%></td>
										<td align="center">
											<a class="btn btn-default" onclick="">
												<em class="fa fa-pencil"></em>
											</a>
											<a class="btn btn-danger" onclick="">
												<em class="fa fa-trash-o"></em>
											</a>
										</td>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>
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




