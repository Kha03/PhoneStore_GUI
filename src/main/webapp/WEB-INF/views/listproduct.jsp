<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Product List</title>
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
    <!-- noUiSlider CSS -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.8.1/nouislider.css"
            integrity="sha512-MKxcSu/LDtbIYHBNAWUQwfB3iVoG9xeMCm32QV5hZ/9lFaQZJVaXfz9aFa0IZExWzCpm7OWvp9zq9gVip/nLMg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- noUiSlider Js -->
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.8.1/nouislider.min.js"
            integrity="sha512-g/feAizmeiVKSwvfW0Xk3ZHZqv5Zs8PEXEBKzL15pM0SevEvoX8eJ4yFWbqakvRj7vtw1Q97bLzEpG2IVWX0Mg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    ></script>
    <!-- jQuery -->
    <script src="<c:url value='/js/jquery.js' />"></script>
    <script src="<c:url value='/js/pagination.min.js' />"></script>
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
    <div class="row mt-3">
        <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">
                    List Product
                </li>
            </ol>
        </nav>
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
    <!-- products -->
    <div class="row mt-3">
        <div class="col-3">
            <h5 class="d-inline-flex align-items-center">
                <img src="<c:url value='/icon/document-filter.svg' />" alt=""/><span
                    class="ps-2 m-0"
            >Filter</span
            >
            </h5>
            <!-- brand -->
            <form:form class="filter_group" action="${pageContext.request.contextPath}/products" method="get">
                <!-- brand -->
                <div class="card border-0">
                    <div class="card-header btn-outline-light">
                        <a
                                class="btn d-inline-flex align-items-center justify-content-between w-100 toggleButton"
                                data-bs-toggle="collapse"
                                href="#FilterBrand"
                        >
                            <p class="m-0">Brand</p>
                            <img
                                    src="<c:url value='/icon/arrow-down.svg' />"
                                    alt="Arrow"
                                    class="arrowIcon"
                            />
                        </a>
                    </div>
                    <div id="FilterBrand" class="collapse show">
                        <div class="card-body p-0">
                            <ul class="list-group borderless">
                                <c:forEach var="brand" items="${trademarks}">
                                    <li class="list-group-item">
                                        <input
                                                class="form-check-input me-1"
                                                type="checkbox"
                                                value="${brand.id}"
                                                id="${brand.id}"
                                                name="trademark"
                                                <c:if test="${selectedTrademarks != null and selectedTrademarks.contains(brand.id)}">
                                                    checked
                                                </c:if>
                                        />
                                        <label class="form-check-label stretched-link"
                                               for="${brand.id}">${brand.name}</label>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- price -->
                <div class="card border-0">
                    <div class="card-header btn-outline-light">
                        <a
                                class="btn d-inline-flex align-items-center justify-content-between w-100 toggleButton"
                                data-bs-toggle="collapse"
                                href="#FilterPrice"
                        >
                            <p class="m-0">Price</p>
                            <img
                                    src="<c:url value='/icon/arrow-down.svg' />"
                                    alt="Arrow"
                                    class="arrowIcon"
                            />
                        </a>
                    </div>
                    <div id="FilterPrice" class="collapse show">
                        <div class="card-body p-0">
                            <div class="mt-2 d-flex flex-wrap gap-2">
                                <input type="hidden" id="hidden-min" name="minPrice"
                                       value="0"
                                       data-min="${selectedMinPrice != null ? selectedMinPrice : 0}"/>
                                <input type="hidden" id="hidden-max" name="maxPrice"
                                       value="100000000"
                                       data-max="${selectedMaxPrice != null ? selectedMaxPrice : 100000000}"/>
                                <input
                                        type="radio"
                                        class="btn-check"
                                        id="btn-check-price-1"
                                        autocomplete="off"
                                        value="0-7000000"
                                        name="priceRange"
                                        <c:if test="${selectedMinPrice == 0 && selectedMaxPrice == 7000000}">checked</c:if> />
                                <label class="btn btn-outline-dark" for="btn-check-price-1">
                                    Dưới 7 Triệu
                                </label>

                                <input
                                        type="radio"
                                        class="btn-check"
                                        id="btn-check-price-2"
                                        autocomplete="off"
                                        value="7000000-15000000"
                                        name="priceRange"
                                        <c:if test="${selectedMinPrice == 7000000 && selectedMaxPrice == 15000000}">checked</c:if> />
                                <label class="btn btn-outline-dark" for="btn-check-price-2">
                                    7 - 15 Triệu
                                </label>

                                <input
                                        type="radio"
                                        class="btn-check"
                                        id="btn-check-price-3"
                                        autocomplete="off"
                                        value="15000000-25000000"
                                        name="priceRange"
                                        <c:if test="${selectedMinPrice == 15000000 && selectedMaxPrice == 25000000}">checked</c:if> />
                                <label class="btn btn-outline-dark" for="btn-check-price-3">
                                    15 - 25 Triệu </label
                                ><input
                                    type="radio"
                                    class="btn-check"
                                    id="btn-check-price-4"
                                    autocomplete="off"
                                    value="25000000-"
                                    name="priceRange"
                                    <c:if test="${selectedMinPrice == 25000000}">checked</c:if> />
                                <label class="btn btn-outline-dark" for="btn-check-price-4">
                                    25 Triệu trở lên</label
                                >
                            </div>
                            <div class="mt-2">
                                <label
                                        for="slider-range"
                                        class="form-label"
                                        style="cursor: pointer; text-decoration: underline"
                                >Khoảng giá khác:</label>

                                <div id="sliderPrice" class="collapse p-2">
                                    <div id="slider-range"></div>
                                    <p class="mt-3">
                                        Giá từ: <span id="min-value">0</span> triệu - <span id="max-value">100</span>
                                        triệu
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Ram -->
                <div class="card border-0">
                    <div class="card-header btn-outline-light">
                        <a
                                class="btn d-inline-flex align-items-center justify-content-between w-100 toggleButton"
                                data-bs-toggle="collapse"
                                href="#FilterRam"
                        >
                            <p class="m-0">Ram</p>
                            <img
                                    src="<c:url value='/icon/arrow-down.svg' />"
                                    alt="Arrow"
                                    class="arrowIcon"
                            />
                        </a>
                    </div>
                    <div id="FilterRam" class="collapse show">
                        <div class="card-body p-0">
                            <ul class="list-group borderless">
                                <c:forEach var="memorie" items="${memories}">
                                    <li class="list-group-item">
                                        <input
                                                class="form-check-input me-1"
                                                type="checkbox"
                                                name="memory"
                                                value="${memorie.id}"
                                                id="${memorie.id}"
                                                <c:if test="${selectedMemories != null and selectedMemories.contains(memorie.id)}">
                                                    checked
                                                </c:if>
                                        />
                                        <label class="form-check-label"
                                               for="${memorie.id}">${memorie.name}</label>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Drive size -->
                <div class="card border-0">
                    <div class="card-header btn-outline-light">
                        <a
                                class="btn d-inline-flex align-items-center justify-content-between w-100 toggleButton"
                                data-bs-toggle="collapse"
                                href="#FilterDriveSize"
                        >
                            <p class="m-0">Drive Size</p>
                            <img
                                    src="<c:url value='/icon/arrow-down.svg' />"
                                    alt="Arrow"
                                    class="arrowIcon"
                            />
                        </a>
                    </div>
                    <div id="FilterDriveSize" class="collapse show">
                        <div class="card-body p-0">
                            <ul class="list-group borderless">
                                <c:forEach var="drive" items="${driveSizes}">
                                    <li class="list-group-item">
                                        <input
                                                class="form-check-input me-1"
                                                type="checkbox"
                                                name="values"
                                                value="${drive.value}"
                                                id="${drive.id}"
                                                <c:if test="${selectedValues != null and selectedValues.contains(drive.value)}">
                                                    checked
                                                </c:if>
                                        />
                                        <label class="form-check-label"
                                               for="${drive.id}">${drive.value}</label>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Hz -->
                <div class="card border-0">
                    <div class="card-header btn-outline-light">
                        <a
                                class="btn d-inline-flex align-items-center justify-content-between w-100 toggleButton"
                                data-bs-toggle="collapse"
                                href="#FilterScanningFrequency"
                        >
                            <p class="m-0">Scanning Frequency</p>
                            <img
                                    src="<c:url value='/icon/arrow-down.svg' />"
                                    alt="Arrow"
                                    class="arrowIcon"
                            />
                        </a>
                    </div>
                    <div id="FilterScanningFrequency" class="collapse show">
                        <div class="card-body p-0">
                            <ul class="list-group borderless">
                                <c:forEach var="scanFre" items="${scanFres}">
                                    <li class="list-group-item">
                                        <input
                                                class="form-check-input me-1"
                                                type="checkbox"
                                                name="values"
                                                value="${scanFre.value}"
                                                id="${scanFre.id}"
                                                <c:if test="${selectedValues != null and selectedValues.contains(scanFre.value)}">
                                                    checked
                                                </c:if>
                                        />
                                        <label class="form-check-label"
                                               for="${scanFre.id}">${scanFre.value}</label>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- use need -->
                <div class="card border-0">
                    <div class="card-header btn-outline-light">
                        <a
                                class="btn d-inline-flex align-items-center justify-content-between w-100 toggleButton"
                                data-bs-toggle="collapse"
                                href="#UseNeed"
                        >
                            <p class="m-0">Usage Needs</p>
                            <img
                                    src="<c:url value='/icon/arrow-down.svg' />"
                                    alt="Arrow"
                                    class="arrowIcon"
                            />
                        </a>
                    </div>
                    <div id="UseNeed" class="collapse show">
                        <div class="card-body p-0">
                            <div class="mt-2 d-flex flex-wrap gap-2">
                                <c:forEach var="useNeed" items="${usageCategories}">
                                    <input
                                            type="checkbox"
                                            class="btn-check"
                                            id="${useNeed.id}"
                                            value="${useNeed.id}"
                                            autocomplete="off"
                                            name="usageCategoryId"
                                            <c:if test="${selectedusageCategory != null and selectedusageCategory.contains(useNeed.id)}">
                                                checked
                                            </c:if>
                                    />
                                    <label class="btn btn-outline-dark" for="${useNeed.id}">
                                            ${useNeed.name}
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                        class="mt-3 d-flex justify-content-center gap-2 border-top border-1 pt-2"
                >
                    <button class="btn btn-outline-danger" type="reset" id="resetButton">Reset</button>
                    <button class="btn btn-outline-dark" type="submit">
                        See Results
                    </button>
                </div>
            </form:form>
        </div>
        <div class="col-9">
            <div class="row mb-3">
                <div class="offset-9 col-3 pe-4">
                    <select class="form-select filter-select" id="sortOptions">
                        <option value="none" ${selectedsort == 'none' ? 'selected' : ''}>Sort by</option>
                        <option value="asc" ${selectedsort == 'asc' ? 'selected' : ''}>Price:
                            ascending
                        </option>
                        <option value="desc" ${selectedsort == 'desc' ? 'selected' : ''}>Price:
                            descending
                        </option>
                    </select>
                </div>
            </div>
            <div class="row gy-4">
                <c:choose>
                    <c:when test="${empty products}">
                        <div class="col-12">
                            <div class="alert alert-warning" role="alert">
                                No products found
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="content" items="${products}">
                            <!-- Declaring a custom variable -->
                            <c:set var="product" value="${content.getContent()}"/>
                            <c:set var="discountPercent" value="${product.sale * 100}"/>
                            <!-- item product -->
                            <div class="col-4">
                                <a href="<c:url value="/products/detail/${product.variantId}" />"
                                   class="product_detail-link text-decoration-none text-reset">
                                    <div
                                            class="product_card p-3 shadow-sm position-relative overflow-hidden"
                                    >
                                    <span
                                            class="badge bg-danger position-absolute <c:if test="${discountPercent == 0}">opacity-0</c:if>"
                                            style="top: 10px; right: 10px"
                                    >${discountPercent}%</span>
                                        <div class="product_card-img mx-auto">
                                            <img
                                                <%--check again--%>
                                                    src="<c:url value='/imgs/p1.png' />"

                                                    class="object-fit-contain product_card-img_content"
                                                    alt="Product 1"
                                            />
                                        </div>
                                        <div class="product_card-content mt-3">
                                            <h6 class="fw-light text-truncate lh-base">
                                                    ${product.name}
                                            </h6>
                                            <div
                                                    class="d-flex justify-content-between mt-3 align-items-end product_card-content_cost"
                                            >
                                                <div class="d-flex flex-column">
                                                    <p
                                                            class="text-muted text-decoration-line-through m-0 <c:if test="${discountPercent == 0}">opacity-0</c:if>  product_card-discount"
                                                    >
                                                        <fmt:formatNumber value="${product.price}" type="currency" currencySymbol="$" groupingUsed="true" />
                                                    </p>
                                                    <p class="fw-light m-0">
                                                        <fmt:formatNumber value="${product.price - (product.price * product.sale)}" type="currency" currencySymbol="$" groupingUsed="true" />
                                                    </p>
                                                </div>
                                                <div class="product_card-start d-flex gap-2">
                                                    <img src="<c:url value='/icon/start-icon.svg' />" alt="Star"/>
                                                    <p class="m-0">4.8</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                                class="w-100 p-2 d-flex align-items-center justify-content-around position-absolute z-1 product_card-add"
                                        >

                                            <form:form class="addToCartForm" role="form" method="post">
                                                <input type="hidden" name="productVariantId"
                                                       value="${product.id}"/>
                                                <button class="btn btn-outline-dark d-flex gap-1 addCartBtn">
                                                    <img
                                                            src="<c:url value='/icon/shopping-cart.svg' />"
                                                            alt=""
                                                            class="cart-icon"
                                                    />
                                                    <p class="m-0">Add to cart</p>
                                                </button>
                                            </form:form>
                                            <img
                                                    src="<c:url value='/icon/heart_icon.svg' />"
                                                    alt=""
                                                    class="heart-icon"
                                            />
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>

            </div>
            <div class="row d-flex justify-content-center mt-3">
                <div class="col-3">
                    <nav aria-label="Page navigation" id="pagination"></nav>
                </div>
            </div>
        </div>
    </div>
    <div
            class="row mt-5 py-3 g-0 justify-content-between border-2 border-top"
    >
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='/icon/computer_icon.svg' />"
                    alt="computer_icon"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">
                Latest and Greatest Tech
            </p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='/icon/clock_icon.svg' />"
                    alt="clock_icon"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">Guarantee</p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='/icon/television_icon.svg' />"
                    alt="television_icon"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">
                Free Shipping over 1000$
            </p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='/icon/airplane_icon.svg' />"
                    alt="airplane_icon"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">24/7 Support</p>
        </div>
    </div>
</main>
<!-- Footer -->
<footer id="footer" class="footer"></footer>
<script>
    load("#footer", "/footer");
    const contextPath = '${pageContext.request.contextPath}';
    const totalPages = ${totalPages};
    const page = ${page};
</script>
<!-- events -->
<script src="<c:url value='/events/script.js'/>"></script>
<script src="<c:url value='/events/controller.js'/>"></script>
<script src="<c:url value='/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>
