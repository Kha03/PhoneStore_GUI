<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<style>
.dropdown-menu {
	z-index: 1050; /* Ensure it appears above other elements */
}
</style>
<div class="container container-fluid border-bottom border-primary">
	<div
		class="d-flex align-items-center justify-content-between pt-2 pb-2 header">
		<a href="#!"> <img
			src="<c:url value='/imgs/img_logo_blue_a700.svg' />" alt="Logo" />
		</a>
		<ul class="nav col-12 col-md-auto justify-content-center">
			<li><a href="${pageContext.request.contextPath}/home" class="nav-link px-2 mx-2 link-secondary">Home</a>
			</li>
			<li><a href="${pageContext.request.contextPath}/products" class="nav-link px-2 mx-2 link-dark">Products</a></li>
			<li><a href="#" class="nav-link px-2 mx-2 link-dark">Blog</a></li>
			<li><a href="#" class="nav-link px-2 mx-2 link-dark">FAQ</a></li>
			<li><a href="#" class="nav-link px-2 mx-2 link-dark">Contact
					Us</a></li>
		</ul>

    <div class="col-3 text-end">
      <button type="button" id="cartButton" class="btn position-relative me-3" data-bs-toggle="offcanvas" data-bs-target="#cartOffcanvas" aria-controls="cartOffcanvas">
        <img
                src="<c:url value='/icon/shopping-cart.svg' />"
                alt="cart"
        />
        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
          ${cart != null ? cart.size() : 0}
        </span>
      </button>
		<c:if test="${accessToken != null}">
			<div class="dropdown btn btn-signIn me-2">
				<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Profile</button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item"
						   href="<c:url value='/profile' />">Profile</a></li>
					<li>
						<form method="post" action="/logout">
							<button class="dropdown-item">Log out</button>
						</form>
					</li>
				</ul>
			</div>
		</c:if>

		<c:if test="${accessToken == null}">
			<div class="btn btn-signIn me-2">
				<form action="<c:url value='/signin'/>" method="get">
					<button type="submit" class="btn btn-signIn ">Sign In /
						Sign Up</button>
				</form>
			</div>
		</c:if>
    </div>
  </div>
</div>
<div class="offcanvas offcanvas-end" tabindex="-1" id="cartOffcanvas" aria-labelledby="cartOffcanvasLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="cartOffcanvasLabel">Shopping Cart (${cart != null ? cart.size() : 0} items)</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
      <c:if test="${empty cart}">
          <div class="text-center">
              <img src="<c:url value='/imgs/empty-cart.png' />" alt="Empty Cart" class="img-fluid mb-3" />
              <p class="text-muted">Your cart is empty. Please add some products!</p>
          </div>
      </c:if>
    <!-- Product Item -->
    <c:forEach var="product" items="${cart}">
      <!-- Product Item -->
      <div class="card mb-3">
        <div class="row g-0 align-items-center">
          <div class="col-md-4">
<%--            <img src="<c:url value='/imgs/${product.productsImage[0].url}' />" class="img-fluid rounded-start" alt="Product Image">--%>
             <img src="<c:url value='/imgs/p1.png' />"  class="img-fluid rounded-start" alt="Product Image"/>
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h6 class="card-title mb-1">${product.productVariantId}</h6>
              <p class="text-muted mb-1">Memory: ${product.memory != null ? product.memory.name : "N/A"}</p>
              <p class="text-muted mb-1">Color: ${product.color != null ? product.color.name : "N/A"}</p>
              <div class="d-flex justify-content-between align-items-center">
                <span>Quantity: ${product.quantity}</span>
                <p class="mb-0 fw-bold">  <fmt:formatNumber value="${product.price - (product.price * product.sale)}" type="currency" currencySymbol="$" groupingUsed="true" /></p>
              </div>
              <button class="btn btn-danger btn-sm mt-2 btn-remove" data-id="${product.id}">Remove</button>
            </div>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>
  <div class="offcanvas-footer p-3">
    <div class="d-flex justify-content-around align-items-center">
      <div>
        <p class="mb-0">Grand Total:</p>
        <h5 class="fw-bold"><fmt:formatNumber value="${cartTotal}" type="currency" currencySymbol="$" groupingUsed="true" /></h5>
      </div>
      <a href="${pageContext.request.contextPath}/cart" class="text-decoration-none btn-cart text-center  w-50">Go To Cart</a>
    </div>
  </div>
</div>
<div class="modal fade" id="confirmDeleteModal" tabindex="-1" aria-labelledby="confirmDeleteLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="confirmDeleteLabel">Confirm Delete Item</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Are you sure you want to remove this item from your cart?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-danger" id="confirmDeleteBtn">Remove</button>
      </div>
    </div>
  </div>
</div>
