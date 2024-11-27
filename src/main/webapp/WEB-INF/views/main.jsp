 <%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <!-- Fonts -->
    <link href="<c:url value='/fonts/stylesheet.css' />" rel="stylesheet"/>
    <!-- Bootstrap CSS -->
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet"/>
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
        <div class="col-6">
            <div class="d-flex flex-column h-100">
                <h1 class="mt-5">Tech Heim</h1>
                <h3 class="mt-5">"Join the digital revolution"</h3>
                <button
                        type="button"
                        class="btn btn-dark align-self-start py-2 w-50 mt-auto border-1"
                >
                    Explore More
                </button>
            </div>
        </div>
        <div class="col-6">
            <img src="<c:url value='imgs/main_pic.png' />" alt="" class="img-fluid"/>
        </div>
    </div>
    <!-- list -->
    <div class="row mt-5">
        <!-- Item product -->
        <div class="col-2">
            <div class="p-1 shadow-sm bg-body rounded">
                <div class="product_img-content mx-auto">
                    <img
                            src="<c:url value='imgs/p1.png' />"
                            alt="Accessories"
                            class="img-fluid"
                    />
                </div>
                <p class="mt-2 text-center">Accessories</p>
            </div>
        </div>
        <!-- Item product -->
        <div class="col-2">
            <div class="p-1 shadow-sm bg-body rounded">
                <div class="product_img-content mx-auto">
                    <img
                            src="<c:url value='imgs/p1.png' />"
                            alt="Accessories"
                            class="img-fluid"
                    />
                </div>
                <p class="mt-2 text-center">Camera</p>
            </div>
        </div>
        <!-- Item product -->
        <div class="col-2">
            <div class="p-1 shadow-sm bg-body rounded">
                <div class="product_img-content mx-auto">
                    <img
                            src="<c:url value='imgs/p2.png' />"
                            alt="Accessories"
                            class="img-fluid"
                    />
                </div>
                <p class="mt-2 text-center">Laptop</p>
            </div>
        </div>
        <!-- Item product -->
        <div class="col-2">
            <div class="p-1 shadow-sm bg-body rounded">
                <div class="product_img-content mx-auto">
                    <img
                            src="<c:url value='imgs/p2.png' />"
                            alt="Accessories"
                            class="img-fluid"
                    />
                </div>
                <p class="mt-2 text-center">Smart Phone</p>
            </div>
        </div>
        <!-- Item product -->
        <div class="col-2">
            <div class="p-1 shadow-sm bg-body rounded">
                <div class="product_img-content mx-auto">
                    <img
                            src="<c:url value='imgs/p1.png' />"
                            alt="Accessories"
                            class="img-fluid"
                    />
                </div>
                <p class="mt-2 text-center">Gaming</p>
            </div>
        </div>
        <!-- Item product -->
        <div class="col-2">
            <div class="p-1 shadow-sm bg-body rounded">
                <div class="product_img-content mx-auto">
                    <img
                            src="<c:url value='imgs/p2.png' />"
                            alt="Accessories"
                            class="img-fluid"
                    />
                </div>
                <p class="mt-2 text-center">Smart Watch</p>
            </div>
        </div>
    </div>
    <!-- Banner -->
    <div class="row mt-5 banner position-relative overflow-hidden">
        <div class="col-5">
            <div
                    class="h-100 d-flex flex-column justify-content-center align-items-center gap-3"
            >
                <h3 class="text-light banner_header">Luxury</h3>
                <p class="banner_text text-light">Various designs and brands</p>
                <button type="button" class="btn btn-dark w-50 py-2">View</button>
            </div>
        </div>
        <div class="col-7 h-100 d-flex align-items-center z-1">
            <div class="h-75 ms-5">
                <img
                        src="<c:url value='imgs/banner_phone.png' />"
                        alt="Banner"
                        class="img-fluid object-fit-contain h-100"
                />
            </div>
        </div>
    </div>
    <!-- sales section -->
    <div class="row mt-4 pt-3 pb-5 bg-dark rounded-3">
        <!-- Sidebar for product information -->
        <div
                class="col-md-3 d-flex flex-column justify-content-center gap-3 align-items-center text-white"
        >
            <h4 class="mb-3">Products On Sale</h4>
            <p>Shop Now!</p>
            <a href="#" class="btn btn-outline-light">View all &rarr;</a>
        </div>
        <!-- Carousel for product items -->
        <div class="col-md-9">
            <div
                    id="carouselProductListSale"
                    class="carousel slide"
                    data-bs-ride="carousel"
            >
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <!-- 3 item in 1 carousel inner -->
                        <div class="row flex-nowrap">
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p1.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p1.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p1.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p1.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 3 item in 1 carousel inner -->
                    <div class="carousel-item">
                        <div class="row flex-nowrap">
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p2.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p2.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p2.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p2.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 3 item in 1 carousel inner -->
                    <div class="carousel-item">
                        <div class="row flex-nowrap">
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p1.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p1.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p1.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card h-100 p-2">
                      <span
                              class="badge bg-danger position-absolute"
                              style="top: 10px; right: 10px"
                      >-50%</span
                      >
                                    <img
                                            src="<c:url value='imgs/p1.png' />"
                                            class="card-img-top img-fluid"
                                            alt="Product 1"
                                    />
                                    <h6 class="card-title fw-light text-truncate">
                                        Logitech G502 Gaming
                                    </h6>
                                    <div class="d-flex justify-content-between">
                                        <p class="text-muted text-decoration-line-through">
                                            $38.00
                                        </p>
                                        <p class="fw-light">$19.00</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button
                        class="carousel-control-prev"
                        type="button"
                        data-bs-target="#carouselProductListSale"
                        data-bs-slide="prev"
                >
              <span
                      class="carousel-control-prev-icon"
                      aria-hidden="true"
              ></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button
                        class="carousel-control-next"
                        type="button"
                        data-bs-target="#carouselProductListSale"
                        data-bs-slide="next"
                >
              <span
                      class="carousel-control-next-icon"
                      aria-hidden="true"
              ></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
    <!-- Blog section -->
    <div class="row mt-4">
        <div class="col-12 p-0 border-2 border-bottom pb-1">
            <div class="row">
                <div class="col-6">
                    <h3>Best Sellers</h3>
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
                                    src="<c:url value='imgs/p1.png' />"
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
                                    <img src="<c:url value='icon/start-icon.svg' />" alt="Star"/>
                                    <p class="m-0">4.8</p>
                                </div>
                            </div>
                        </div>
                        <div
                                class="w-100 p-2 d-flex align-items-center justify-content-around position-absolute z-1 product_card-add"
                        >
                            <button class="btn btn-outline-dark d-flex gap-1">
                                <img
                                        src="<c:url value='icon/shopping-cart.svg' />"
                                        alt=""
                                        class="cart-icon"
                                />
                                <p class="m-0">Add to cart</p>
                            </button>
                            <img
                                    src="<c:url value='icon/heart_icon.svg' />"
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
                                    src="<c:url value='imgs/p1.png' />"
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
                                    <img src="<c:url value='icon/start-icon.svg' />" alt="Star"/>
                                    <p class="m-0">4.8</p>
                                </div>
                            </div>
                        </div>
                        <div
                                class="w-100 p-2 d-flex align-items-center justify-content-around position-absolute z-1 product_card-add"
                        >
                            <button class="btn btn-outline-dark d-flex gap-1">
                                <img
                                        src="<c:url value='icon/shopping-cart.svg' />"
                                        alt=""
                                        class="cart-icon"
                                />
                                <p class="m-0">Add to cart</p>
                            </button>
                            <img
                                    src="<c:url value='icon/heart_icon.svg' />"
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
                                    src="<c:url value='imgs/p1.png' />"
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
                                    <img src="<c:url value='icon/start-icon.svg' />" alt="Star"/>
                                    <p class="m-0">4.8</p>
                                </div>
                            </div>
                        </div>
                        <div
                                class="w-100 p-2 d-flex align-items-center justify-content-around position-absolute z-1 product_card-add"
                        >
                            <button class="btn btn-outline-dark d-flex gap-1">
                                <img
                                        src="<c:url value='icon/shopping-cart.svg' />"
                                        alt=""
                                        class="cart-icon"
                                />
                                <p class="m-0">Add to cart</p>
                            </button>
                            <img
                                    src="<c:url value='icon/heart_icon.svg' />"
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
                                    src="<c:url value='imgs/p1.png' />"
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
                                    <img src="<c:url value='icon/start-icon.svg' />" alt="Star"/>
                                    <p class="m-0">4.8</p>
                                </div>
                            </div>
                        </div>
                        <div
                                class="w-100 p-2 d-flex align-items-center justify-content-around position-absolute z-1 product_card-add"
                        >
                            <button class="btn btn-outline-dark d-flex gap-1">
                                <img
                                        src="<c:url value='icon/shopping-cart.svg' />"
                                        alt=""
                                        class="cart-icon"
                                />
                                <p class="m-0">Add to cart</p>
                            </button>
                            <img
                                    src="<c:url value='icon/heart_icon.svg' />"
                                    alt=""
                                    class="heart-icon"
                            />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- brand -->
    <div class="row mt-4">
        <div class="col-12 p-0 border-2 border-bottom pb-1">
            <h3>Top Brands</h3>
        </div>
        <div class="col-12 p-0 mt-4">
            <div class="row d-flex align-items-center">
                <!-- item brand -->
                <div class="col-2">
                    <div class="mx-auto w-75">
                        <img
                                src="<c:url value='imgs/apple_brand.png' />"
                                class="img-fluid object-fit-contain"
                                alt="apple"
                        />
                    </div>
                </div>
                <!-- item brand -->
                <div class="col-2">
                    <div class="mx-auto w-75">
                        <img
                                src="<c:url value='imgs/sony_brand.png' />"
                                class="img-fluid object-fit-contain"
                                alt="sony"
                        />
                    </div>
                </div>
                <!-- item brand -->
                <div class="col-2">
                    <div class="mx-auto w-75">
                        <img
                                src="<c:url value='imgs/samsung_brand.png' />"
                                class="img-fluid object-fit-contain"
                                alt="samsung"
                        />
                    </div>
                </div>
                <!-- item brand -->
                <div class="col-2">
                    <div class="mx-auto w-75">
                        <img
                                src="<c:url value='imgs/canon_brand.png' />"
                                class="img-fluid object-fit-contain"
                                alt="canon"
                        />
                    </div>
                </div>
                <!-- item brand -->
                <div class="col-2">
                    <div class="mx-auto w-75">
                        <img
                                src="<c:url value='imgs/huawei_brand.png' />"
                                class="img-fluid object-fit-contain"
                                alt="huawei"
                        />
                    </div>
                </div>
                <!-- item brand -->
                <div class="col-2">
                    <div class="mx-auto w-75">
                        <img
                                src="<c:url value='imgs/lenovo_brand.png' />"
                                class="img-fluid object-fit-contain"
                                alt="lenovo"
                        />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner -->
    <div class="row mt-5 banner banner_2 position-relative overflow-hidden">
        <div class="col-5">
            <div
                    class="h-100 d-flex flex-column justify-content-center align-items-center gap-3"
            >
                <h3 class="text-light banner_header">Technology</h3>
                <p class="banner_text text-light">Various designs and brands</p>
                <button type="button" class="btn btn-dark w-50 py-2">View</button>
            </div>
        </div>
        <div class="col-7 h-100 d-flex align-items-center z-1">
            <div class="h-75 ms-5">
                <img
                        src="<c:url value='imgs/banner_phone.png' />"
                        alt="Banner"
                        class="img-fluid object-fit-contain h-100"
                />
            </div>
        </div>
    </div>
    <div
            class="row mt-5 py-3 g-0 justify-content-between border-2 border-top"
    >
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='icon/computer_icon.svg' />"
                    alt="computer_icon"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">
                Latest and Greatest Tech
            </p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='icon/clock_icon.svg' />"
                    alt="clock_icon"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">Guarantee</p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='icon/television_icon.svg' />"
                    alt="television_icon"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">
                Free Shipping over 1000$
            </p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
            <img
                    src="<c:url value='icon/airplane_icon.svg' />"
                    alt="airplane_icon"
            />
            <p class="m-0 fs-5 ms-4" style="width: 180px">24/7 Support</p>
        </div>
    </div>
</main>
<!-- Footer -->
<footer id="footer" class="footer"></footer>
<script>
    load("#header", "/header");
    load("#footer", "/footer");
</script>

    <script src="<c:url value='/js/bootstrap.bundle.min.js'/>"></script>

</body>
</html>
 