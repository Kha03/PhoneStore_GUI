<%@page
	import="iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderResponse"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
<title>Order History</title>

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
<!--<script src="<c:url value='/js/bootstrap.min.js' />"></script>  -->
<!-- Scripts -->
<script src="<c:url value='/events/loadtemplate.js' />"></script>
</head>

<body>
	<!-- header -->
	<header id="header" class="header"></header>
	<script>
		load("#header", "/header");
	</script>
	<!-- main -->
	<div class="container-fluid custom-container">
		<div class="row">
			<jsp:include page="PersonalDataTemplate.jsp" />
			<div class="col-md-9 content">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Account</a></li>
						<li class="breadcrumb-item active" aria-current="page">Orders</li>
					</ol>
				</nav>
				<h3>Order History</h3>
				<p class="text-muted">Track, return or purchase items</p>
				<ul class="nav nav-tabs" id="orderTab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" id="current-tab"
							data-bs-toggle="tab" data-bs-target="#current" type="button"
							role="tab">
							Current <span class="badge bg-secondary">${size}</span>
						</button>
					</li>
					<c:set var="counter" value="0" scope="page" />
					<c:set var="count" value="0" scope="page" />
					<c:set var="cter" value="0" scope="page" />
					<c:forEach items="${orders}" var="o" varStatus="status">
						<c:if test="${o.orderStatus == 'DELIVERED'}">
							<%-- Tăng giá trị biến đếm nếu điều kiện đúng --%>
							<c:set var="counter" value="${counter + 1}" scope="page" />
						</c:if>
					</c:forEach>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="delivered-tab" data-bs-toggle="tab"
							data-bs-target="#delivered" type="button" role="tab">
							Delivered <span class="badge bg-secondary">${counter}</span>
						</button>
					</li>

					<c:forEach items="${orders}" var="o" varStatus="status">
						<c:if test="${o.orderStatus == 'CANCELLED'}">
							<c:set var="count" value="${count + 1}" scope="page" />
						</c:if>
					</c:forEach>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="canceled-tab" data-bs-toggle="tab"
							data-bs-target="#canceled" type="button" role="tab">
							Canceled <span class="badge bg-secondary">${count}</span>
						</button>
					</li>

					<c:forEach items="${orders}" var="o" varStatus="status">
						<c:if test="${o.orderStatus == 'RETURNED'}">
							<c:set var="cter" value="${cter + 1}" scope="page" />
						</c:if>
					</c:forEach>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="returned-tab" data-bs-toggle="tab"
							data-bs-target="#returned" type="button" role="tab">
							Returned <span class="badge bg-secondary">${cter}</span>
						</button>
					</li>
				</ul>
				<div class="tab-content pt-4" id="orderTabContent">
					<div class="tab-pane fade show active" id="current" role="tabpanel">
						<div class="order-table">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Order Code</th>
										<th>Total</th>
										<th>Sent To</th>
										<th>Order Detail</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${orders}" var="o" varStatus="status">
										<tr>
											<td>${o.id}</td>
											<td>
												<%
												Object obj = pageContext.findAttribute("o");
												OrderResponse orderRe = (OrderResponse) obj;
												double total = orderRe.getOrderDetails().stream().mapToDouble(t -> t.getPrice() * t.getQuantity()).sum();

												java.text.NumberFormat currencyFormatter = java.text.NumberFormat.getCurrencyInstance(new java.util.Locale("vi", "VN"));
												String formattedTotal = currencyFormatter.format(total);
												out.print(formattedTotal);
												%>
											</td>
											<td>${o.customer.name}</td>
											<td><a
												href="${pageContext.request.contextPath}/orders/orders?idOrder=${o.id}&cusId=${o.customer.id}"
												class="btn btn-sm btn-primary">Order Detail</a></td>
										</tr>

									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
					<div class="tab-pane fade" id="delivered" role="tabpanel">
						<div class="order-table">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Order Code</th>
										<th>Placed On</th>
										<th>Total</th>
										<th>Delivered</th>
										<th>Sent To</th>
										<th>Items</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${orders}" var="o" varStatus="status">
										<c:if test="${o.orderStatus == 'DELIVERED'}">
											<tr>
												<td>${o.id}</td>
												<td>${o.createdAt}</td>
												<td>
													<%
													Object obj = pageContext.findAttribute("o");
													OrderResponse orderRe = (OrderResponse) obj;
													double total = orderRe.getOrderDetails().stream().mapToDouble(t -> t.getPrice() * t.getQuantity()).sum();

													java.text.NumberFormat currencyFormatter = java.text.NumberFormat.getCurrencyInstance(new java.util.Locale("vi", "VN"));
													String formattedTotal = currencyFormatter.format(total);
													out.print(formattedTotal);
													%>
												</td>
												<td>${o.createdAt}</td>
												<td>${o.customer.name}</td>
												<td><img src="https://via.placeholder.com/50"
													alt="Product 3" /> <img
													src="https://via.placeholder.com/50" alt="Product 4" /></td>
											</tr>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="tab-pane fade" id="canceled" role="tabpanel">
						<div class="order-table">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Order Code</th>
										<th>Placed On</th>
										<th>Total</th>
										<th>Canceled On</th>
										<th>Sent To</th>
										<th>Items</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${orders}" var="o" varStatus="status">
										<c:if test="${o.orderStatus == 'CANCELLED'}">
											<tr>
												<td>${o.id}</td>
												<td>${o.createdAt}</td>
												<td>
													<%
													Object obj = pageContext.findAttribute("o");
													OrderResponse orderRe = (OrderResponse) obj;
													double total = orderRe.getOrderDetails().stream().mapToDouble(t -> t.getPrice() * t.getQuantity()).sum();

													java.text.NumberFormat currencyFormatter = java.text.NumberFormat.getCurrencyInstance(new java.util.Locale("vi", "VN"));
													String formattedTotal = currencyFormatter.format(total);
													out.print(formattedTotal);
													%>
												</td>
												<td>${o.createdAt}</td>
												<td>${o.customer.name}</td>
												<td><img src="https://via.placeholder.com/50"
													alt="Product 3" /> <img
													src="https://via.placeholder.com/50" alt="Product 4" /></td>
											</tr>
										</c:if>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
					<div class="tab-pane fade" id="returned" role="tabpanel">
						<div class="order-table">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Order Code</th>
										<th>Placed On</th>
										<th>Total</th>
										<th>Returned On</th>
										<th>Sent To</th>
										<th>Items</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${orders}" var="o" varStatus="status">
										<c:if test="${o.orderStatus == 'RETURNED'}">
											<tr>
												<td>${o.id}</td>
												<td>${o.createdAt}</td>
												<td>
													<%
													Object obj = pageContext.findAttribute("o");
													OrderResponse orderRe = (OrderResponse) obj;
													double total = orderRe.getOrderDetails().stream().mapToDouble(t -> t.getPrice() * t.getQuantity()).sum();

													java.text.NumberFormat currencyFormatter = java.text.NumberFormat.getCurrencyInstance(new java.util.Locale("vi", "VN"));
													String formattedTotal = currencyFormatter.format(total);
													out.print(formattedTotal);
													%>
												</td>
												<td>${o.createdAt}</td>
												<td>${o.customer.name}</td>
												<td><img src="https://via.placeholder.com/50"
													alt="Product 3" /> <img
													src="https://via.placeholder.com/50" alt="Product 4" /></td>
											</tr>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<footer id="footer" class="footer"></footer>
	<script>
		load("#footer", "/footer");
	</script>
	<!-- events  -->
	<script src="<c:url value='/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>
