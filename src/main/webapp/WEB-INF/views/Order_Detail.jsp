<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Oder detail</title>
<%-- Favicon --%>
<link rel="apple-touch-icon" sizes="57x57"
	href="<c:url value='/favicon/apple-icon-57x57.png'/>">
<link rel="apple-touch-icon" sizes="60x60"
	href="<c:url value='/favicon/apple-icon-60x60.png'/>">
<link rel="apple-touch-icon" sizes="72x72"
	href="<c:url value='/favicon/apple-icon-72x72.png'/>">
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value='/favicon/apple-icon-76x76.png'/>">
<link rel="apple-touch-icon" sizes="114x114"
	href="<c:url value='/favicon/apple-icon-114x114.png'/>">
<link rel="apple-touch-icon" sizes="120x120"
	href="<c:url value='/favicon/apple-icon-120x120.png'/>">
<link rel="apple-touch-icon" sizes="144x144"
	href="<c:url value='/favicon/apple-icon-144x144.png'/>">
<link rel="apple-touch-icon" sizes="152x152"
	href="<c:url value='/favicon/apple-icon-152x152.png'/>">
<link rel="apple-touch-icon" sizes="180x180"
	href="<c:url value='/favicon/apple-icon-180x180.png'/>">
<link rel="icon" type="image/png" sizes="192x192"
	href="<c:url value='/favicon/android-icon-192x192.png'/>">
<link rel="icon" type="image/png" sizes="32x32"
	href="<c:url value='/favicon/favicon-32x32.png'/>">
<link rel="icon" type="image/png" sizes="96x96"
	href="<c:url value='/favicon/favicon-96x96.png'/>">
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value='/favicon/favicon-16x16.png'/>">
<link rel="manifest" href="<c:url value='/favicon/manifest.json'/>">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="<c:url value='/favicon/ms-icon-144x144.png'/>">
<meta name="theme-color" content="#ffffff">
<!-- Fonts -->
<link href="<c:url value='/fonts/stylesheet.css' />" rel="stylesheet" />
<!-- Bootstrap CSS -->
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet" />
<!-- Styles -->
<link href="<c:url value='/css/styles.css' />" rel="stylesheet" />
<link href="<c:url value='/css/acount.css' />" rel="stylesheet" />
<!-- Bootstrap JS -->
<script src="<c:url value='/js/bootstrap.min.js' />"></script>
<!-- Scripts -->
<script src="<c:url value='/events/loadtemplate.js' />"></script>
</head>

<body>
	<!-- header -->
	<header id="header" class="header"></header>
	<script>
		load("#header", "/header");
	</script>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-8 mx-auto">
				<h2>Order Detail</h2>
				<div class="order-summary">
					<h4># ${idOrderDetail}</h4>
					
					<p>
						<strong>Placed On:</strong> 2023/04/15
					</p>
					<p>
						<strong>Total:</strong>
						<fmt:formatNumber value="${total}" type="number"
							pattern="#,###.##" />
					</p>
					<p>
						<strong>Status:</strong> ${status}
					</p>
				</div>

				<h4>Order Items</h4>
				<table class="table table-bordered order-table">
					<thead>
						<tr>
							<th>Product</th>
							<th>Quantity</th>
							<th>Price</th>
						</tr>
					</thead>
					<!-- Khởi tạo biến orderTotal -->
					<c:set var="orderTotal" value="0" scope="page" />
					<tbody>
						<c:forEach var="order" items="${orderDetail}">
							<tr class="order-item">
								<td>${order.productVariantDetail.name}</td>
								<td>${order.quantity}</td>
								<td><fmt:formatNumber value="${order.price}" type="number"
										pattern="#,###.##" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<h4>Shipping Information</h4>
				<c:forEach var="c" items="${cus}">
					<p>
						<strong>Recipient:</strong> ${c.name}
					</p>
					<p>
						<strong>Address:</strong>${address}
					</p>
					<p>
						<strong>Phone:</strong> ${c.phone}
					</p>

				</c:forEach>

				<a href="${pageContext.request.contextPath}/orders"
					class="btn btn-primary mt-3">Back to Orders</a>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<!-- Footer -->
	<footer id="footer" class="footer"></footer>
	<script>
		load("#footer", "/footer");
	</script>
</body>
</html>
