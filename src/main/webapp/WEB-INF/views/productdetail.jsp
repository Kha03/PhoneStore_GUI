<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Product detail</title>
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
    <!-- jquery -->
    <script src="<c:url value='/js/jquery.js' />"></script>
    <!-- Styles -->
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet"/>
    <!-- Scripts -->
    <script src="<c:url value='/events/loadtemplate.js' />"></script>
</head>
<body>
<!-- header -->
<header id="header" class="header"></header>
<script>
    load("#header", "/header");
</script>
<!-- Main -->
<main class="container container-fluid">
    <div id="imageModal" class="modal fade" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Xem ảnh</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <img id="modalMainImage" src="" alt="Ảnh chính" class="w-100 main-image">
                    <div class="sub-images-slider"></div>
                </div>
            </div>
        </div>
    </div>



    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">Login Required</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>You need to be logged in to feed back.</p>
                    <p>Would you like to signin now?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <a href="${pageContext.request.contextPath}/signin" class="btn btn-signIn">Sign in</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="errorModalLabel">Thông báo</h5>
                </div>
                <div class="modal-body">
                    Bạn chỉ có thể tải lên tối đa 5 ảnh.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
    <div class="toast-container position-fixed bottom-0 end-0 p-3">
        <div id="liveToast" class="toast align-items-center text-bg-success border-0" role="alert" aria-live="assertive"
             aria-atomic="true">
            <div class="d-flex">
                <div class="toast-body">
                    add to cart success
                </div>
                <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"
                        aria-label="Close"></button>
            </div>
        </div>
    </div>
    <c:set var="product" value="${product}"/>
    <!-- breadcrumb -->
    <div class="row mt-3">
        <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item" aria-current="page">List Product</li>
                <li class="breadcrumb-item active" aria-current="page">
                    ${product.name}
                </li>
            </ol>
        </nav>
    </div>
    <!-- product detail -->
    <div class="row mt-3">
        <div class="col-8">
            <div class="row">
                <div class="col-12">
                    <div class="product_detail-img-content mx-auto">
                        <c:choose>
                            <c:when test="${not empty product.imgAva}">
                                <img
                                        src="<c:url value='http://localhost:8081/storage/${product.imgAva}'/>"
                                        alt="Product"
                                        class="w-100 product_detail-img"
                                />
                            </c:when>
                            <c:otherwise>
                                <img
                                        src="<c:url value='/imgs/p1.png' />"
                                        alt="Product"
                                        class="w-100 product_detail-img"
                                />
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
            <div class="row product_detail-img-group pt-3 justify-content-between position-relative">
                <div class="position-absolute top-50 translate-middle-y product_detail-more d-none">
                    <p class="m-0">+</p>
                    <span class="m-0"></span>
                </div>
                <c:forEach var="image" items="${productsImage}" varStatus="status">
                    <div class="col-2 product-thumbnail" data-image="<c:url value='http://localhost:8081/storage/${image.path}'/>">
                        <div class="product_detail-img_item">
                            <c:choose>
                                <c:when test="${not empty image.path}">
                                    <img
                                            src="<c:url value='http://localhost:8081/storage/${image.path}'/>"
                                            alt="sub img product" class="img_item"
                                    />
                                </c:when>
                                <c:otherwise>
                                    <img
                                            src="<c:url value='/imgs/p2.png' />"
                                            alt="sub img product" class="img_item"
                                    />
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="col-4">
            <div class="info">
                <div class="info_content">
                    <h3 class="info_title" id="product_name">
                        ${product.name}
                    </h3>
                    <div class="info_sold d-flex align-items-center">
                        <div class="info_sold-start d-flex align-items-center gap-1">
                            <img src="<c:url value='/icon/Star-white.svg' />" alt=""/>
                            <span class="text-light m-0">4.9</span>
                        </div>
                        <div class="info_sold-out">
                            <span>sold</span>
                            <span id="sold-out">125</span>
                        </div>
                    </div>
                    <div class="d-flex info_service justify-content-between">
                        <div class="d-flex align-items-center gap-1">
                            <img src="<c:url value='/icon/shop.svg'/>" alt=""/>
                            <p class="m-0">In Stock</p>
                        </div>
                        <div class="d-flex align-items-center gap-1">
                            <img src="<c:url value='/icon/verify.svg' />" alt=""/>
                            <p class="m-0">Guaranteed</p>
                        </div>
                        <div class="d-flex align-items-center gap-1">
                            <img src="<c:url value='/icon/truck.svg' />" alt=""/>
                            <p class="m-0">Free Delivery</p>
                        </div>
                    </div>
                    <form:form class="addToCartForm" role="form" method="post" action="${pageContext.request.contextPath}/cart">
                        <input type="hidden" name="productVariantId"
                               value="${variantId}"/>
                    <div class="info_select-group  d-flex">
                        <p class="m-0">Select memory</p>
                        <div class="d-flex ms-3">
                        <c:forEach var="memoryEntry" items="${memoryNames}" varStatus="status">
                            <div class="ms-2"  >
                                <input
                                        type="radio"
                                        class="btn-check "
                                        id="${memoryEntry.key}"
                                        value="${memoryEntry.key}"
                                        autocomplete="off"
                                        name="memoryId"
                                    ${status.first ? "checked" : ""}
                                />
                                <label class="btn btn-outline-dark btn-sm" for="${memoryEntry.key}" onclick="selectMemory('${memoryEntry.value}')">
                                        ${memoryEntry.value}
                                </label>
                            </div>
                        </c:forEach>
                        </div>
                    </div>
                    <div class="info_select-group  d-flex">
                        <p class="m-0">Select color</p>
                        <div class="d-flex ms-3" id="color-options">
                                <%--          hanlde render color                 --%>
                        </div>
                    </div>
                    <!-- price -->
                    <div class="info_price">
                        <div class="d-flex align-items-center">
                            <p class="m-0 info_price-cost"></p>
                            <div class="d-flex info_price-discount_group">
                                <img src="<c:url value='/icon/discount-shape.svg' />" alt=""/>
                                <p class="m-0 info_price-discount"></p>
                            </div>
                        </div>
                        <div class="info_price-last_group d-flex align-items-center">
                            <p class="m-0">Last price:</p>
                            <p class="m-0 info_price-last"></p>
                        </div>
                    </div>
                    <!-- button add -->
                    <div class="info_add-cart d-flex flex-column">

                        <button class="btn  w-75 info_btn-add" id="addCartBtn">Add To Cart</button>

                        <button type="submit" class="btn w-75 info_btn-buy" id="buyBtn">
                            Buy Now
                            <img
                                    src="<c:url value='/icon/arrow-right.svg' />"
                                    alt=""
                                    class="icon_btn-buy"
                            />
                        </button>
                    </div>
                    </form:form>
                    <div class="info_detail w-100 d-flex">
                        <div class="info_detail-name">
                            <ul>
                                <c:forEach var="value" items="${values}" varStatus="status">
                                    <c:choose>
                                        <c:when test="${status.first}">
                                            <li>Model Name</li>
                                        </c:when>
                                        <c:when test="${value.attributeName == 'Screen size'}">
                                            <li>Screen Size</li>
                                        </c:when>
                                        <c:when test="${value.attributeName == 'Screen technology'}">
                                            <li>Screen Technology</li>
                                        </c:when>
                                        <c:when test="${value.attributeName == 'Chipset'}">
                                            <li>Chip</li>
                                        </c:when>
                                        <c:when test="${value.attributeName == 'Batery'}">
                                            <li>Batery</li>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="info_detail-atr">
                            <ul class="list-unstyled">
                                <c:forEach var="value" items="${values}" varStatus="status">
                                    <c:choose>
                                        <c:when test="${status.first}">
                                            <li>${product.name}</li>
                                        </c:when>
                                        <c:when test="${value.attributeName == 'Screen size'}">
                                            <li>${value.value}</li>
                                        </c:when>
                                        <c:when test="${value.attributeName == 'Chipset'}">
                                            <li>${value.value}</li>
                                        </c:when>
                                        <c:when test="${value.attributeName == 'Screen technology'}">
                                            <li>${value.value}</li>
                                        </c:when>
                                        <c:when test="${value.attributeName == 'Batery'}">
                                            <li>${value.value}</li>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- product description -->
    <div class="row mt-3">
        <div class="col-12">
            <div class="product_description">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <button
                                class="nav-link active"
                                id="nav-similar-products-tab"
                                data-bs-toggle="tab"
                                data-bs-target="#nav-similar-products"
                                type="button"
                                role="tab"
                                aria-controls="nav-similar-products"
                                aria-selected="true"
                        >
                            Similar Products
                        </button>
                        <button
                                class="nav-link"
                                id="nav-description-tab"
                                data-bs-toggle="tab"
                                data-bs-target="#nav-description"
                                type="button"
                                role="tab"
                                aria-controls="nav-description"
                                aria-selected="false"
                        >
                            Description
                        </button>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div
                            class="tab-pane fade show active mt-2"
                            id="nav-similar-products"
                            role="tabpanel"
                            aria-labelledby="nav-similar-products-tab"
                            tabindex="0"
                    >
                        <table
                                class="table table-striped table-borderless w-75 technical-details"
                        >
                            <thead class="technical-details-header">
                            <tr>
                                <th scope="col"><h4>Technical Details</h4></th>
                            </tr>
                            </thead>
                            <tbody class="technical-details-body">
                            <c:forEach var="value" items="${values}">
                                <c:if test="${value.type == null || value.type == '' || value.type == 'common'}">
                                    <tr class="detail-row">
                                        <th scope="row" class="detail-title">${value.attributeName}</th>
                                        <td class="detail-value">${value.value}</td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            <tr class="collapsible-row">
                                <td colspan="2">
                                    <a
                                            class="btn w-100 d-flex justify-content-between p-0 toggle-collapse"
                                            data-bs-toggle="collapse"
                                            href="#camera-screen"
                                            role="button"
                                            aria-expanded="false"
                                            aria-controls="camera-screen"
                                            style="border: 0"
                                    >
                                        <p class="m-0">Camera and Screen</p>
                                        <img src="<c:url value='/icon/arrow-down.svg' />" alt=""/>
                                    </a>
                                    <div class="collapse" id="camera-screen">
                                        <table class="table mt-3 sub-details">
                                            <tbody class="sub-details-body">
                                            <c:forEach var="value" items="${values}">
                                                <c:if test="${value.type == 'Camera and Screen'}">
                                                    <tr class="sub-detail-row">
                                                        <th scope="row" class="detail-title">${value.attributeName}</th>
                                                        <td class="detail-value">${value.value}</td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr class="collapsible-row">
                                <td colspan="2">
                                    <a
                                            class="btn w-100 d-flex justify-content-between p-0 toggle-collapse"
                                            data-bs-toggle="collapse"
                                            href="#battery-charger"
                                            role="button"
                                            aria-expanded="false"
                                            aria-controls="battery-charger"
                                            style="border: 0"
                                    >
                                        <p class="m-0">Battery and Charger</p>
                                        <img src="<c:url value='/icon/arrow-down.svg' />" alt=""/>
                                    </a>
                                    <div class="collapse" id="battery-charger">
                                        <table class="table mt-3 sub-details">
                                            <tbody class="sub-details-body">
                                            <c:forEach var="value" items="${values}">
                                                <c:if test="${value.type == 'Battery and Charger'}">
                                                    <tr class="sub-detail-row">
                                                        <th scope="row" class="detail-title">${value.attributeName}</th>
                                                        <td class="detail-value">${value.value}</td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr class="collapsible-row">
                                <td colspan="2">
                                    <a
                                            class="btn w-100 d-flex justify-content-between p-0 toggle-collapse"
                                            data-bs-toggle="collapse"
                                            href="#utilities"
                                            role="button"
                                            aria-expanded="false"
                                            aria-controls="utilities"
                                            style="border: 0"
                                    >
                                        <p class="m-0">Utilities</p>
                                        <img src="<c:url value='/icon/arrow-down.svg' />" alt=""/>
                                    </a>
                                    <div class="collapse" id="utilities">
                                        <table class="table mt-3 sub-details">
                                            <tbody class="sub-details-body">
                                            <c:forEach var="value" items="${values}">
                                                <c:if test="${value.type == 'Utilities'}">
                                                    <tr class="sub-detail-row">
                                                        <th scope="row" class="detail-title">${value.attributeName}</th>
                                                        <td class="detail-value">${value.value}</td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr class="collapsible-row">
                                <td colspan="2">
                                    <a
                                            class="btn w-100 d-flex justify-content-between p-0 toggle-collapse"
                                            data-bs-toggle="collapse"
                                            href="#design-material"
                                            role="button"
                                            aria-expanded="false"
                                            aria-controls="design-material"
                                            style="border: 0"
                                    >
                                        <p class="m-0">Design & Materials</p>
                                        <img src="<c:url value='/icon/arrow-down.svg' />" alt=""/>
                                    </a>
                                    <div class="collapse" id="design-material">
                                        <table class="table mt-3 sub-details">
                                            <tbody class="sub-details-body">
                                            <c:forEach var="value" items="${values}">
                                                <c:if test="${value.type == 'Design & Materials'}">
                                                    <tr class="sub-detail-row">
                                                        <th scope="row" class="detail-title">${value.attributeName}</th>
                                                        <td class="detail-value">${value.value}</td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr class="collapsible-row">
                                <td colspan="2">
                                    <a
                                            class="btn w-100 d-flex justify-content-between p-0 toggle-collapse"
                                            data-bs-toggle="collapse"
                                            href="#connect"
                                            role="button"
                                            aria-expanded="false"
                                            aria-controls="connect"
                                            style="border: 0"
                                    >
                                        <p class="m-0">Connect</p>
                                        <img src="<c:url value='/icon/arrow-down.svg' />" alt=""/>
                                    </a>
                                    <div class="collapse" id="connect">
                                        <table class="table mt-3 sub-details">
                                            <tbody class="sub-details-body">
                                            <c:forEach var="value" items="${values}">
                                                <c:if test="${value.type == 'Connect'}">
                                                    <tr class="sub-detail-row">
                                                        <th scope="row" class="detail-title">${value.attributeName}</th>
                                                        <td class="detail-value">${value.value}</td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div
                            class="tab-pane fade mt-2"
                            id="nav-description"
                            role="tabpanel"
                            aria-labelledby="nav-description-tab"
                            tabindex="0"
                    >
                        <h1 class="mb-4">${product.name}</h1>
                        <img
                                src="<c:url value='/imgs/p1.png' />"
                                alt="iPhone 15"
                                class="img-fluid mb-4"
                        />

                        <p>
                            <strong>Thiết kế:</strong> iPhone 15 tiếp tục duy trì ngôn ngữ
                            thiết kế cao cấp với khung viền kim loại và mặt lưng kính. Tuy
                            nhiên, Apple đã tinh chỉnh một số chi tiết giúp máy cầm nắm
                            thoải mái hơn và nhẹ hơn so với các phiên bản trước.
                        </p>

                        <p>
                            <strong>Màn hình:</strong> Màn hình OLED 6.1 inch trên iPhone
                            15 cho chất lượng hiển thị tuyệt vời với độ sáng cao và màu
                            sắc sống động. Tần số quét 120Hz mang đến trải nghiệm mượt mà,
                            từ thao tác vuốt đến chơi game.
                        </p>

                        <p>
                            <strong>Hiệu năng:</strong> Chip A17 Bionic mới của Apple mang
                            lại sức mạnh vượt trội, khả năng xử lý mượt mà mọi tác vụ, từ
                            các ứng dụng hàng ngày đến những tựa game nặng.
                        </p>

                        <p>
                            <strong>Camera:</strong> Camera kép với cảm biến chính 48MP
                            mang lại những bức ảnh sắc nét, chi tiết, ngay cả trong điều
                            kiện ánh sáng yếu. Tính năng chụp ảnh đêm và quay video 4K
                            cũng được cải thiện đáng kể.
                        </p>

                        <p>
                            <strong>Pin:</strong> Thời lượng pin của iPhone 15 đã được cải
                            thiện, đủ để sử dụng cả ngày dài với các tác vụ cơ bản. Công
                            nghệ sạc nhanh và sạc không dây cũng hỗ trợ tốt.
                        </p>

                        <p>
                            <strong>Kết luận:</strong> iPhone 15 là một sự lựa chọn tuyệt
                            vời cho những ai muốn trải nghiệm công nghệ mới nhất của
                            Apple. Với thiết kế đẹp, hiệu năng mạnh mẽ và camera cải tiến,
                            đây là một chiếc điện thoại đáng để nâng cấp.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%--    FeedBAck--%>
        <div class="row mt-5 flex-nowrap">
            <!-- Feedback List -->
            <div class="col-md-8 feedback-list-container">
                <h4 class="mb-4">Các đánh giá trước đây</h4>
                <!-- Feedback Item -->
                <c:forEach var="feedback" items="${feedbacks}">
                    <div class="feedback-item">
                        <div class="d-flex align-items-center mb-3">
                            <c:choose>
                                <c:when test="${not empty feedback.customerAvatar}">
                                    <img
                                            src="<c:url value='http://localhost:8081/storage/customer/avatar/${feedback.customerAvatar}' />"
                                            alt="Avatar"
                                            class="feedback-avatar"
                                    />
                                </c:when>
                                <c:otherwise>
                                    <img
                                            src="<c:url value='/imgs/ava.png' />"
                                            alt="Default Avatar"
                                            class="feedback-avatar"
                                    />
                                </c:otherwise>
                            </c:choose>
                            <div class="ms-3">
                                <h5 class="mb-0">${feedback.customerName}</h5>

                                <small class="text-muted"> <fmt:formatDate value="${feedback.createdAt}" pattern="dd/MM/yyyy HH:mm" /></small>
                            </div>
                        </div>
                        <p>
                           ${feedback.feedbackText}
                        </p>
                        <div class="row">
                           <c:forEach var="image" items="${feedback.imgFeedbacks}">
                                    <div class="col-2">
                                        <img
                                                src="<c:url value='http://localhost:8081/storage/${image}' />"
                                                alt="Feedback Image"
                                                class="feedback-image"
                                        />
                                    </div>
                                </c:forEach>
                        </div>
                    </div>
                </c:forEach>
                <c:if test="${feedbacks.size() == 0}">
                    <div class="text-center">
                        <h3>Chưa có đánh giá nào cho sản phẩm này :(((</h3>
                    </div>
                </c:if>
            </div>

            <!-- Feedback Form -->
            <div class="col-md-4 feedback-form-container">
                <h4 class="mb-4">Viết đánh giá của bạn</h4>
                <form:form action="${pageContext.request.contextPath}/upFeedBack" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="variantId" value="${variantId}">
                    <div class="form-group">
              <textarea
                      class="form-control"
                      rows="4"
                      placeholder="Nhập đánh giá của bạn..."
                      name="content"
              ></textarea>
                    </div>
                    <div class="form-group mt-3">
                        <label for="imageUpload">Tải lên hình ảnh (tối đa 5 ảnh):</label>
                        <input type="file" class="form-control-file" id="imageUpload" multiple accept="image/*" name="file">
                        <div class="preview-container mt-3" id="previewContainer"></div>
                    </div>
                    <div class="row">
                        <button type="submit" class="btn btn-submit col-4 mx-auto mt-3" id="feedbackbtn">Gửi đánh giá</button>
                    </div>
                </form:form>

            </div>
        </div>

    <!-- smilar product -->
    <div class="row mt-5 pt-3">
        <div class="col-12">
            <h4 class="mb-3">Similar Products</h4>
        </div>
        <!-- Carousel for product items -->
        <div class="col-md-12">
            <div
                    id="similarProduct"
                    class="carousel slide"
                    data-bs-ride="carousel"
            >
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <!-- 3 item in 1 carousel inner -->
                        <div class="row flex-nowrap">
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                    <!-- 3 item in 1 carousel inner -->
                    <div class="carousel-item">
                        <div class="row flex-nowrap">
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                    <!-- 3 item in 1 carousel inner -->
                    <div class="carousel-item">
                        <div class="row flex-nowrap">
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig Iphone 14 promax 256 gig
                                            Iphone 14 promax 256 gig
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
                                                <img
                                                        src="<c:url value='/icon/start-icon.svg' />"
                                                        alt="Star"
                                                />
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
                <button
                        class="carousel-control-prev btn_similar_product-left"
                        type="button"
                        data-bs-target="#similarProduct"
                        data-bs-slide="prev"
                >
              <span
                      class="carousel-control-prev-icon similar_product-left"
                      aria-hidden="true"
              ></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button
                        class="carousel-control-next btn_similar_product-right"
                        type="button"
                        data-bs-target="#similarProduct"
                        data-bs-slide="next"
                >
              <span
                      class="carousel-control-next-icon similar_product-right"
                      aria-hidden="true"
              ></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
    <!-- tech -->
    <div
            class="row mt-5 py-3 g-0 justify-content-between border-2 border-top"
    >
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='/icon/computer_icon.svg' />"
                    alt="Computer"
                    class="computer"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">
                Latest and Greatest Tech
            </p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='/icon/clock_icon.svg' />"
                    alt="Computer"
                    class="computer"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">Guarantee</p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='/icon/television_icon.svg' />"
                    alt="Computer"
                    class="computer"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">
                Free Shipping over 1000$
            </p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='/icon/airplane_icon.svg' />"
                    alt="Computer"
                    class="computer"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">24/7 Support</p>
        </div>
    </div>
</main>
<!-- Footer -->
<footer id="footer" class="footer"></footer>
<script>
    load("#footer", "/footer");
    const token = "${token}"
    const contextPath = '${pageContext.request.contextPath}';
    const colorKey = ${colorNamesJson};
    const productMemories = ${memoriesJson};
</script>
<!-- events  -->
<script src="<c:url value='/events/script.js'/>"></script>
<script src="<c:url value='/events/eventproductdetail.js'/>"></script>
<script src="<c:url value='/events/controller.js'/>"></script>
<script src="<c:url value='/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>
