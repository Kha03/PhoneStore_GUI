<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cart</title>
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
    <div class="container_checkout mt-3">
      <div class="fincons">
        <div class="fSelected">
          <img src="<c:url value='/icon/giohang.png' />" alt="" class="iconStore" />
          <div class="line"></div>
        </div>
        <div class="fCheckout">
          <div class="lineGrey"></div>
          <div class="fdestxt">
            <img
              src="<c:url value='/icon/checkout.png' />"
              alt=""
              class="iconSmall"
            /><span class="des">Checkout</span>
          </div>
          <div class="lineGrey"></div>
        </div>
        <div class="fCheckout">
          <div class="lineGrey"></div>
          <div class="fdestxt">
            <img src="<c:url value='/icon/payment.png' />"
              alt=""
              class="iconSmall"
            /><span class="des">Payment</span>
          </div>
        </div>
      </div>

      <div class="content">
        <div class="content1">
          <c:if test="${empty cart}">
            <div class="text-center">
              <img src="<c:url value='/imgs/empty-cart.png' />" alt="Empty Cart" class="img-fluid mb-3" />
              <p class="text-muted">Your cart is empty. Please add some products!</p>
            </div>
          </c:if>
       <c:forEach var="product" items="${cart}">
         <div class="fDetailProduct">
             <%--<img src="<c:url value='/imgs/${product.productsImage[0].url}' />" class="img-fluid rounded-start" alt="Product Image">--%>
           <img src="<c:url value='/imgs/p1.png' />" alt="" class="imgProduct" />
           <div class="fDetail">
             <div class="ftitle">
               <span class="txttitle">${product.productVariantId} </span>
             </div>
             <div class="fdeli mt-2">
               <div class="fcolor">
                 <span class="txtmt">Memory: ${product.memory != null ? product.memory.name : "N/A"} </span>
               </div>
               <div class="fcolor mt-2">
                 <span class="txtmt">Color: ${product.color != null ? product.color.name : "N/A"}</span>
               </div>
               <div class="fcolor mt-2">
                 <img
                         src="<c:url value='/icon/delivery-truck.png' />"
                         alt=""
                         class="iconDeli"
                 />
                 <span class="txtmt ms-2">Free Delivery</span>
               </div>
               <div class="fcolor mt-2">
                 <img
                         src="<c:url value='/icon/guarantee.png' />"
                         alt=""
                         class="iconDeli"
                 />
                 <span class="txtmt ms-2">Guaranteed</span>
               </div>
             </div>
             <div class="fPriceandControl">
               <div class="fPrice">
                 <span class="txtDiscount"> <fmt:formatNumber value="${product.price * product.sale}" type="currency" currencySymbol="$" groupingUsed="true" /></span>
                 <span class="txtsold"> <fmt:formatNumber value="${product.price - (product.price * product.sale)}" type="currency" currencySymbol="$" groupingUsed="true" /></span>
               </div>
               <div class="fControl">
                <a class="btn"  href="${pageContext.request.contextPath}/cart/remove/${product.id}" > <img src="<c:url value='/icon/trash.png' />" alt="" class="both" /></a>
                 <div class="fBtn">
                   <a   href="${pageContext.request.contextPath}/cart/removeSingle/${product.id}" class=" btn">
                     <span class="txtControl">-</span>
                   </a>
                   <span class="txtControl">${product.quantity}</span>
                   <a href="${pageContext.request.contextPath}/cart/add/${product.id}"  class=" btn">
                     <span class="txtControl">+</span>
                   </a>
                 </div>
               </div>
             </div>
           </div>
         </div>
       </c:forEach>
        </div>
        <div class="content2">
          <div class="fPaymentDetail">
            <span class="txtPayment">Payment Details</span>
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
            <button class="btnTotal mt-3">
              <span class="txtProcced">Procced to checkout</span>
            </button>
          </div>
        </div>
      </div>
      <!-- Blog section -->
      <div class="container row mt-4">
        <div class="col-12 p-0 border-2 border-bottom pb-1">
          <div class="row">
            <div class="col-6">
              <h5>
                Customers who viewed items in your browsing history also viewed
              </h5>
            </div>
            <div class="col-6">
              <a class="btn-link float-end me-5" href="#">View all &rarr;</a>
            </div>
          </div>
        </div>
        <div class="col-12 p-0 mt-4">
          <div class="row">
            <!-- item product -->
            <div class="col-3">
              <div
                class="product_card p-3 shadow-sm position-relative overflow-hidden"
              >
                <span
                  class="badge bg-danger position-absolute opacity-0"
                  style="top: 10px; right: 10px"
                  >-50%</span
                >
                <div class="product_card-img mx-auto">
                  <img
                    src="<c:url value='/imgs/p1.png' />"
                    class="object-fit-contain product_card-img_content"
                    alt="Product 1"
                  />
                </div>
                <div class="product_card-content mt-3">
                  <h6 class="fw-light text-truncate lh-base">
                    Iphone 14 promax 256 gig Iphone 14 promax 256 gig Iphone 14
                    promax 256 gig Iphone 14 promax 256 gig Iphone 14 promax 256
                    gig
                  </h6>
                  <div
                    class="d-flex justify-content-between mt-3 align-items-end product_card-content_cost"
                  >
                    <div class="d-flex flex-column">
                      <p
                        class="text-muted text-decoration-line-through m-0 opacity-0 product_card-discount"
                      >
                        $38.00
                      </p>
                      <p class="fw-light m-0">$19.00</p>
                    </div>
                    <div class="product_card-start d-flex gap-2">
                      <img src="<c:url value='/icon/start-icon.svg' />" alt="Star" />
                      <p class="m-0">4.8</p>
                    </div>
                  </div>
                </div>
                <div
                  class="w-100 p-2 d-flex align-items-center justify-content-around position-absolute z-1 product_card-add"
                >
                  <button class="btn btn-outline-dark d-flex gap-1">
                    <img
                      src="<c:url value='/icon/shopping-cart.svg' />"
                      alt=""
                      class="cart-icon"
                    />
                    <p class="m-0">Add to cart</p>
                  </button>
                  <img
                   src="<c:url value='/icon/heart_icon.svg' />"
                    alt=""
                    class="heart-icon"
                  />
                </div>
              </div>
            </div>
            <!-- item product -->
            <div class="col-3">
              <div
                class="product_card p-3 shadow-sm position-relative overflow-hidden"
              >
                <span
                  class="badge bg-danger position-absolute"
                  style="top: 10px; right: 10px"
                  >-50%</span
                >
                <div class="product_card-img mx-auto">
                  <img
                    src="<c:url value='/imgs/p1.png' />"
                    class="object-fit-contain product_card-img_content"
                    alt="Product 1"
                  />
                </div>
                <div class="product_card-content mt-3">
                  <h6 class="fw-light text-truncate lh-base">
                    Iphone 14 promax 256 gig Iphone 14 promax 256 gig Iphone 14
                    promax 256 gig Iphone 14 promax 256 gig Iphone 14 promax 256
                    gig
                  </h6>
                  <div
                    class="d-flex justify-content-between mt-3 align-items-end product_card-content_cost"
                  >
                    <div class="d-flex flex-column">
                      <p
                        class="text-muted text-decoration-line-through m-0 product_card-discount"
                      >
                        $38.00
                      </p>
                      <p class="fw-light m-0">$19.00</p>
                    </div>
                    <div class="product_card-start d-flex gap-2">
                      <img src="<c:url value='/icon/start-icon.svg' />" alt="Star" />
                      <p class="m-0">4.8</p>
                    </div>
                  </div>
                </div>
                <div
                  class="w-100 p-2 d-flex align-items-center justify-content-around position-absolute z-1 product_card-add"
                >
                  <button class="btn btn-outline-dark d-flex gap-1">
                    <img
                      src="<c:url value='/icon/shopping-cart.svg' />"
                      alt=""
                      class="cart-icon"
                    />
                    <p class="m-0">Add to cart</p>
                  </button>
                  <img
                   src="<c:url value='/icon/heart_icon.svg' />"
                    alt=""
                    class="heart-icon"
                  />
                </div>
              </div>
            </div>
            <!-- item product -->
            <div class="col-3">
              <div
                class="product_card p-3 shadow-sm position-relative overflow-hidden"
              >
                <span
                  class="badge bg-danger position-absolute"
                  style="top: 10px; right: 10px"
                  >-50%</span
                >
                <div class="product_card-img mx-auto">
                  <img
                    src="<c:url value='/imgs/p1.png' />"
                    class="object-fit-contain product_card-img_content"
                    alt="Product 1"
                  />
                </div>
                <div class="product_card-content mt-3">
                  <h6 class="fw-light text-truncate lh-base">
                    Iphone 14 promax 256 gig Iphone 14 promax 256 gig Iphone 14
                    promax 256 gig Iphone 14 promax 256 gig Iphone 14 promax 256
                    gig
                  </h6>
                  <div
                    class="d-flex justify-content-between mt-3 align-items-end product_card-content_cost"
                  >
                    <div class="d-flex flex-column">
                      <p
                        class="text-muted text-decoration-line-through m-0 product_card-discount"
                      >
                        $38.00
                      </p>
                      <p class="fw-light m-0">$19.00</p>
                    </div>
                    <div class="product_card-start d-flex gap-2">
                      <img src="<c:url value='/icon/start-icon.svg' />" alt="Star" />
                      <p class="m-0">4.8</p>
                    </div>
                  </div>
                </div>
                <div
                  class="w-100 p-2 d-flex align-items-center justify-content-around position-absolute z-1 product_card-add"
                >
                  <button class="btn btn-outline-dark d-flex gap-1">
                    <img
                      src="<c:url value='/icon/shopping-cart.svg' />"
                      alt=""
                      class="cart-icon"
                    />
                    <p class="m-0">Add to cart</p>
                  </button>
                  <img
                   src="<c:url value='/icon/heart_icon.svg' />"
                    alt=""
                    class="heart-icon"
                  />
                </div>
              </div>
            </div>
            <!-- item product -->
            <div class="col-3">
              <div
                class="product_card p-3 shadow-sm position-relative overflow-hidden"
              >
                <span
                  class="badge bg-danger position-absolute"
                  style="top: 10px; right: 10px"
                  >-50%</span
                >
                <div class="product_card-img mx-auto">
                  <img
                    src="<c:url value='/imgs/p1.png' />"
                    class="object-fit-contain product_card-img_content"
                    alt="Product 1"
                  />
                </div>
                <div class="product_card-content mt-3">
                  <h6 class="fw-light text-truncate lh-base">
                    Iphone 14 promax 256 gig Iphone 14 promax 256 gig Iphone 14
                    promax 256 gig Iphone 14 promax 256 gig Iphone 14 promax 256
                    gig
                  </h6>
                  <div
                    class="d-flex justify-content-between mt-3 align-items-end product_card-content_cost"
                  >
                    <div class="d-flex flex-column">
                      <p
                        class="text-muted text-decoration-line-through m-0 product_card-discount"
                      >
                        $38.00
                      </p>
                      <p class="fw-light m-0">$19.00</p>
                    </div>
                    <div class="product_card-start d-flex gap-2">
                      <img src="<c:url value='/icon/start-icon.svg' />" alt="Star" />
                      <p class="m-0">4.8</p>
                    </div>
                  </div>
                </div>
                <div
                  class="w-100 p-2 d-flex align-items-center justify-content-around position-absolute z-1 product_card-add"
                >
                  <button class="btn btn-outline-dark d-flex gap-1">
                    <img
                      src="<c:url value='/icon/shopping-cart.svg' />"
                      alt=""
                      class="cart-icon"
                    />
                    <p class="m-0">Add to cart</p>
                  </button>
                  <img
                   src="<c:url value='/icon/heart_icon.svg' />"
                    alt=""
                    class="heart-icon"
                  />
                </div>
              </div>
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
