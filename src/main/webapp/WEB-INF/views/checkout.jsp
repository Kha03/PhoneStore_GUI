<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Checkout</title>
    <%-- Favicon --%>
    <link rel="apple-touch-icon" sizes="57x57" href="<c:url value='/favicon/apple-icon-57x57.png'/>">
    <link rel="apple-touch-icon" sizes="60x60" href="<c:url value='/favicon/apple-icon-60x60.png'/>">
    <link rel="apple-touch-icon" sizes="72x72" href="<c:url value='/favicon/apple-icon-72x72.png'/>">
    <link rel="apple-touch-icon" sizes="76x76" href="<c:url value='/favicon/apple-icon-76x76.png'/>">
    <link rel="apple-touch-icon" sizes="114x114" href="<c:url value='/favicon/apple-icon-114x114.png'/>">
    <link rel="apple-touch-icon" sizes="120x120" href="<c:url value='/favicon/apple-icon-120x120.png'/>">
    <link rel="apple-touch-icon" sizes="144x144" href="<c:url value='/favicon/apple-icon-144x144.png'/>">
    <link rel="apple-touch-icon" sizes="152x152" href="<c:url value='/favicon/apple-icon-152x152.png'/>">
    <link rel="apple-touch-icon" sizes="180x180" href="<c:url value='/favicon/apple-icon-180x180.png'/>">
    <link rel="icon" type="image/png" sizes="192x192" href="<c:url value='/favicon/android-icon-192x192.png'/>">
    <link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/favicon/favicon-32x32.png'/>">
    <link rel="icon" type="image/png" sizes="96x96" href="<c:url value='/favicon/favicon-96x96.png'/>">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/favicon/favicon-16x16.png'/>">
    <link rel="manifest" href="<c:url value='/favicon/manifest.json'/>">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<c:url value='/favicon/ms-icon-144x144.png'/>">
    <meta name="theme-color" content="#ffffff">
    <!-- Fonts -->
    <link href="<c:url value='/fonts/stylesheet.css' />" rel="stylesheet"/>
    <!-- Bootstrap CSS -->
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet"/>
    <!-- Bootstrap JS -->
    <%--    <script src="<c:url value='/js/bootstrap.min.js' />"></script>--%>
    <%--   bootstrap.bundle.min.js instead of bootstrap.min.js in footer--%>
    <!-- Styles -->
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet"/>
    <link href="<c:url value='/css/checkOut.css' />" rel="stylesheet"/>
    <!-- Scripts -->
    <script src="<c:url value='/events/loadtemplate.js' />"></script>
    <!-- jQuery -->
    <script src="<c:url value='/js/jquery.js' />"></script>
</head>
<body>
<!-- header -->
<header id="header" class="header"></header>
<script>
    load("#header", "/header");
</script>
<!-- main -->
<!-- Modal Confirmation -->
<div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirmationModalLabel">Confirm Your Order</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to proceed with the payment?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-signIn" id="confirmSubmit">Confirm</button>
            </div>
        </div>
    </div>
</div>

<div class="container_checkout mt-3">
    <div class="fincons">
        <div class="fCheckout">
            <div class="fdestxt">
                <img
                        src="<c:url value='/icon/giohang.svg' />"
                        alt=""
                        class="iconSmall"
                /><span class="des">Cart</span>
            </div>
            <div class="line"></div>
        </div>
        <div class="fCheckout">
            <div class="line"></div>
            <div class="fdestxt">
                <img
                        src="<c:url value='/icon/checkout_active.svg' />"
                        alt=""
                        class="iconSmall"
                /><span class="des">Checkout</span>
            </div>
            <div class="line"></div>
        </div>
        <div class="fCheckout">
            <div class="lineGrey"></div>
            <div class="fdestxt">
                <img src="<c:url value='/icon/payment.svg' />"
                     alt=""
                     class="iconSmall"
                /><span class="des">Payment</span>
            </div>
        </div>
    </div>

    <div class="container checkout-container">
        <div class="row">
            <div class="col-md-7">
                <div class="order-summary">
                    <h4>Your Order</h4>
                    <div class="order-group">
                        <c:forEach var="product" items="${cart}">
                            <div class="order-item">
                                <img src="<c:url value='/imgs/p1.png' />" alt="" class="imgProduct" />
                                <div class="d-flex flex-column ms-3">
                                    <h5>${product.productVariantId}</h5>
                                    <span>Memory: ${product.memory != null ? product.memory.name : "N/A"}</span>
                                    <span>Color: ${product.color != null ? product.color.name : "N/A"}</span>
                                    <span>Quantity: ${product.quantity}</span>
                                   <span class="price"> <fmt:formatNumber value="${product.price - (product.price * product.sale)}" type="currency" currencySymbol="$" groupingUsed="true" /></span>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="total-price">
                        <div class="fDetailPayment">
                            <div class="fsub">
                                <span class="sub">Subtotal</span>
                                <span class="sub"><fmt:formatNumber value="${cartTotal}" type="currency" currencySymbol="$" groupingUsed="true" /></span>
                            </div>
                            <div class="fsub">
                                <span class="sub">Discount</span>
                                <span class="sub"><fmt:formatNumber value="${cartDiscount}" type="currency" currencySymbol="$" groupingUsed="true" /></span>
                            </div>
                            <div class="line"></div>
                            <div class="ftotal">
                                <span class="total">Grand Total</span>
                                <span class="total"><fmt:formatNumber value="${finalTotal}" type="currency" currencySymbol="$" groupingUsed="true" /></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Column: Checkout Form -->
            <div class="col-md-5">
                <div class="order-summary">
                    <h4>Checkout Details</h4>
                    <form:form class="checkout-form" action="${pageContext.request.contextPath}/cart/checkout/order" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="name" readonly value="${customer.name}">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" readonly name="email" value="${sessionScope.get("email")}">
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Shipping Address</label>
                            <textarea required class="form-control" id="address" rows="3" name="address" placeholder="1234 Street Name, City, Country"></textarea>
                            <c:if test="${!empty orderMessage}">
                                <p class="text-danger">${orderMessage}</p>
                            </c:if>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Payment Method</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="paymentMethod" id="vnpay" value="vnpay" checked>
                                <label class="form-check-label" for="vnpay">
                                    VN Pay
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="paymentMethod" id="shipcod" value="shipcod">
                                <label class="form-check-label" for="shipcod">
                                    Payment upon receipt
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Proceed to Payment</button>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- footer -->
<footer id="footer" class="footer"></footer>
<script>
    load("#footer", "/footer");
</script>
<script src="<c:url value='/events/controller.js' />"></script>
<script src="<c:url value='/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>
