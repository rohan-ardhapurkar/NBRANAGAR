<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<style type="text/css">
body {
	overflow-y: hidden;
	overflow-x: hidden;
}

#header {
	background: #00c4cc;
	background-image: linear-gradient(139deg, #00796B 0%, #004D40 100%);
	padding-top: 0.55em;
	padding-bottom: 0.55em;
	color: white;
	top: 0;
	font-size: 30px;
	text-align: center;
	font-weight: 900;
	margin-bottom: 5px;
}
</style>
<script type="text/javascript">
	$(function() {
		$('#newRegistration').click(function() {
			debugger
			window.location.href = "mainpage.jsp";
			return false;
		})
		$('#downloadExcel').click(function() {
			document.homePage.action = "DownloadExcelServlet";
			document.homePage.method = "POST";
			document.homePage.submit();
		})
	});
</script>

</head>
<body>
	<form name="homePage" id="homePage">
		<header id="header"> <img
			src="${pageContext.request.contextPath}/images/des_logo.jpg"
			style="height: 50px; width: 80px;"> Survey for Verification of
		Establishments and Collection of Information</header>
		<div class="container" id="wrap">
			<div class="container" style="margin-top: 30px;">
				<h1 class="col-md-1"></h1>
				<h1 class="col-md-1"></h1>
				<label class="col-md-1"><u>Filters </u></label>
				<div class="dropdown col-sm-2">
					<button class="btn fbtn dropdown-toggle" type="button"
						data-toggle="dropdown">
						By District <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">Companies Act, 1956</a></li>
						<li><a href="#">Factories Act, 1948</a></li>
						<li><a href="#">Shops and Commercial Establishment Act,
								1948</a></li>
						<li><a href="#">Societies Registration Act, 1860</a></li>
						<li><a href="#">Cooperative Societies Act, 1960</a></li>
						<li><a href="#">Khadi and Village Industries Board</a></li>
						<li><a href="#">Directorate of Industries(District
								Industries Centre)</a></li>
					</ul>
				</div>
				<div class="dropdown col-sm-2">
					<button class="btn fbtn dropdown-toggle" type="button"
						data-toggle="dropdown">
						By Act <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
					</ul>
				</div>
				<div class="dropdown col-md-1">
					<button class="btn fbtn dropdown-toggle" type="button"
						data-toggle="dropdown">
						By Year <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
					</ul>
				</div>
			</div>

			<!-- Design For list -->
			<section> <!--for demo wrap-->
			<h1>
				<hr>
				List Of Companies
			</h1>
			<div class="tbl-header">
				<table cellpadding="0" cellspacing="0" border="0"
					style="overflow-x: true; overflow-y: true;">
					<thead>
						<tr>
							<th>Company Name</th>
							<th>Company Address</th>
							<th>State</th>
							<th>District</th>
						</tr>
					</thead>
				</table>
			</div>
			<div class="tbl-content">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<c:forEach var="list" items="${companyList}">
							<tr>
								<td><c:out value="${list.name}"></c:out></td>
								<td><c:out value="${list.address}"></c:out></td>
								<td><c:out value="${list.stateName}"></c:out></td>
								<td><c:out value="${list.districtName}"></c:out></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			</section>


			<!-- Table Script -->
			<script>
				// '.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
				$(window).on(
						"load resize ",
						function() {
							var scrollWidth = $('.tbl-content').width()
									- $('.tbl-content table').width();
							$('.tbl-header').css({
								'padding-right' : scrollWidth
							});
						}).resize();
			</script>
			<button class="btn btn-success" style="margin-left: 450px;"
				id="newRegistration">New Registration</button>
			<button class="btn btn-primary" style="margin-left: 70px;"
				id="downloadExcel">Download Excel</button>
			<br>
		</div>
	</form>
</body>
</html>