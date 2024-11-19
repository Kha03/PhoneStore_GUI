<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- Fonts -->
    <link href="../assets/fonts/stylesheet.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Bootstrap JS -->
    <script src="../assets/js/bootstrap.min.js"></script>
    <!-- jquery -->
    <script src="../assets/js/jquery.js"></script>
    <!-- Styles -->
    <link href="../assets/css/styles.css" rel="stylesheet" />
    <!-- load template -->
    <script src="../assets/events/loadtemplate.js"></script>
  </head>
  <body>
    <!-- header -->
    <header id="header" class="header"></header>
    <script>
      load("#header", "./header.html");
    </script>
    <!-- Main -->
    <main class="container container-fluid">
      <!-- breadcrumb -->
      <div class="row mt-3">
        <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item" aria-current="page">List Product</li>
            <li class="breadcrumb-item active" aria-current="page">
              I sờ phone
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
                <img
                  src="../assets/imgs/p1.png"
                  alt="Product"
                  class="w-100 product_detail-img"
                />
              </div>
            </div>
          </div>
          <div
            class="row product_detail-img-group pt-3 justify-content-between position-relative"
          >
            <div
              class="position-absolute top-50 translate-middle-y product_detail-more"
            >
              <p class="m-0">+</p>
              <span class="m-0">2</span>
            </div>
            <div class="col-2">
              <div class="product_detail-img_item">
                <img src="../assets/imgs/p2.png" alt="" class="img_item" />
              </div>
            </div>
            <div class="col-2">
              <div class="product_detail-img_item">
                <img src="../assets/imgs/p2.png" alt="" class="img_item" />
              </div>
            </div>
            <div class="col-2">
              <div class="product_detail-img_item">
                <img src="../assets/imgs/p2.png" alt="" class="img_item" />
              </div>
            </div>
            <div class="col-2">
              <div class="product_detail-img_item">
                <img src="../assets/imgs/p2.png" alt="" class="img_item" />
              </div>
            </div>
            <div class="col-2">
              <div class="product_detail-img_item">
                <img src="../assets/imgs/p2.png" alt="" class="img_item" />
              </div>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="info">
            <div class="info_content">
              <h3 class="info_title" id="product_name">
                MacBook Pro M2 MNEJ3 2022 LLA 13.3 inch
              </h3>
              <div class="info_sold d-flex align-items-center">
                <div class="info_sold-start d-flex align-items-center gap-1">
                  <img src="../assets/icon/Star-white.svg" alt="" />
                  <span class="text-light m-0">4.9</span>
                </div>
                <div class="info_sodf-out">
                  <span>sold</span>
                  <span id="sold-out">125</span>
                </div>
              </div>
              <div class="d-flex info_service justify-content-between">
                <div class="d-flex align-items-center gap-1">
                  <img src="../assets/icon/shop.svg" alt="" />
                  <p class="m-0">In Stock</p>
                </div>
                <div class="d-flex align-items-center gap-1">
                  <img src="../assets/icon/verify.svg" alt="" />
                  <p class="m-0">Guaranteed</p>
                </div>
                <div class="d-flex align-items-center gap-1">
                  <img src="../assets/icon/truck.svg" alt="" />
                  <p class="m-0">Free Delivery</p>
                </div>
              </div>
              <div class="info_select-color d-flex">
                <p class="m-0">Select color</p>
                <div class="d-flex ms-3">
                  <div class="info_color active" style="background: #000"></div>
                  <div class="info_color" style="background: #c90808"></div>
                  <div class="info_color" style="background: #7c8c00"></div>
                  <div class="info_color" style="background: #550048"></div>
                  <div class="info_color" style="background: #00158c"></div>
                </div>
              </div>
              <!-- price -->
              <div class="info_price">
                <div class="d-flex align-items-center">
                  <p class="m-0 info_price-cost">$ 1299.00</p>
                  <div class="d-flex info_price-discount_group">
                    <img src="../assets/icon/discount-shape.svg" alt="" />
                    <p class="m-0 info_price-discount">-12%</p>
                  </div>
                </div>
                <div class="info_price-last_group d-flex align-items-center">
                  <p class="m-0">Last price:</p>
                  <p class="m-0 info_price-last">$ 1491.00</p>
                </div>
              </div>
              <!-- button add -->
              <div class="info_add-cart d-flex flex-column">
                <button class="btn w-75 info_btn-add">Add To Cart</button>
                <button class="btn w-75 info_btn-buy">
                  Buy Now
                  <img
                    src="../assets/icon/arrow-right.svg"
                    alt=""
                    class="icon_btn-buy"
                  />
                </button>
              </div>
              <div class="info_detail w-100 d-flex">
                <div class="info_detail-name">
                  <ul class="">
                    <li>Brand</li>
                    <li>Model Name</li>
                    <li>Screen Size</li>
                    <li>Hard Disk Size</li>
                    <li>Chip</li>
                  </ul>
                </div>
                <div class="info_detail-atr">
                  <ul class="list-unstyled">
                    <li>Apple</li>
                    <li>Macbook Pro</li>
                    <li>13.3 Inches</li>
                    <li>256 GB</li>
                    <li>core i5</li>
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
                    <tr class="detail-row">
                      <th scope="row" class="detail-title">Operating system</th>
                      <td class="detail-value">Android 13</td>
                    </tr>
                    <tr class="detail-row">
                      <th scope="row" class="detail-title">Chip (CPU)</th>
                      <td class="detail-value">Snapdragon 695 5G</td>
                    </tr>
                    <tr class="detail-row">
                      <th scope="row" class="detail-title">CPU speed</th>
                      <td class="detail-value">2.2 GHz</td>
                    </tr>
                    <tr class="detail-row">
                      <th scope="row" class="detail-title">Ram</th>
                      <td class="detail-value">12 GB</td>
                    </tr>
                    <tr class="detail-row">
                      <th scope="row" class="detail-title">Storage capacity</th>
                      <td class="detail-value">256 GB</td>
                    </tr>
                    <tr class="detail-row">
                      <th scope="row" class="detail-title">
                        Remaining capacity (available)
                      </th>
                      <td class="detail-value">236 GB</td>
                    </tr>
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
                          <img src="../assets/icon/arrow-down.svg" alt="" />
                        </a>
                        <div class="collapse" id="camera-screen">
                          <table class="table mt-3 sub-details">
                            <tbody class="sub-details-body">
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">
                                  Rear camera resolution
                                </th>
                                <td class="detail-value">
                                  Main 64 MP & Secondary 8 MP
                                </td>
                              </tr>
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">
                                  Record video from the rear camera
                                </th>
                                <td class="detail-value">
                                  <p class="m-0">HD 720p@60fps</p>
                                  <p class="m-0">HD 720p@30fps</p>
                                  <p class="m-0">1080p@60fps</p>
                                  <p class="m-0">FullHD 1080p@30fps</p>
                                </td>
                              </tr>
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
                          <img src="../assets/icon/arrow-down.svg" alt="" />
                        </a>
                        <div class="collapse" id="battery-charger">
                          <table class="table mt-3 sub-details">
                            <tbody class="sub-details-body">
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">
                                  Battery capacity
                                </th>
                                <td class="detail-value">4800 mAh</td>
                              </tr>
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">
                                  Maximum charging support
                                </th>
                                <td class="detail-value">44W</td>
                              </tr>
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">
                                  Battery technology
                                </th>
                                <td class="detail-value">
                                  <p class="m-0">Save battery</p>
                                  <p class="m-0">Charge quickly</p>
                                </td>
                              </tr>
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
                          <img src="../assets/icon/arrow-down.svg" alt="" />
                        </a>
                        <div class="collapse" id="utilities">
                          <table class="table mt-3 sub-details">
                            <tbody class="sub-details-body">
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">
                                  Advanced security
                                </th>
                                <td class="detail-value">
                                  <p class="m-0">
                                    Unlock fingerprint under the screen
                                  </p>
                                  <p class="m-0">Face unlock</p>
                                </td>
                              </tr>
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">
                                  Water and dust resistance
                                </th>
                                <td class="detail-value">IP54</td>
                              </tr>
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
                          <img src="../assets/icon/arrow-down.svg" alt="" />
                        </a>
                        <div class="collapse" id="design-material">
                          <table class="table mt-3 sub-details">
                            <tbody class="sub-details-body">
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">Design</th>
                                <td class="detail-value">Monolithic</td>
                              </tr>
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">
                                  Materials
                                </th>
                                <td class="detail-value">
                                  Plastic frame & Glass back
                                </td>
                              </tr>
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
                          <img src="../assets/icon/arrow-down.svg" alt="" />
                        </a>
                        <div class="collapse" id="connect">
                          <table class="table mt-3 sub-details">
                            <tbody class="sub-details-body">
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">
                                  Mobile network
                                </th>
                                <td class="detail-value">5G</td>
                              </tr>
                              <tr class="sub-detail-row">
                                <th scope="row" class="detail-title">Sim</th>
                                <td class="detail-value">2 Nano Sim</td>
                              </tr>
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
                <h1 class="mb-4">Đánh Giá Chi Tiết iPhone 15</h1>
                <img
                  src="../assets/imgs/p1.png"
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
      <!-- smilar product -->
      <div class="row mt-4">
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
                          src="../assets/imgs/p1.png"
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
                              src="../assets/icon/start-icon.svg"
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
                            src="../assets/icon/shopping-cart.svg"
                            alt=""
                            class="cart-icon"
                          />
                          <p class="m-0">Add to cart</p>
                        </button>
                        <img
                          src="../assets/icon/heart_icon.svg"
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
            src="../assets/icon/computer_icon.svg"
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
            src="../assets/icon/clock_icon.svg"
            alt="Computer"
            class="computer"
          />
          <p class="m-0 fs-5 ms-4" style="width: 180px">Guarantee</p>
        </div>
        <!-- tech item -->
        <div class="col-2 d-flex align-items-center">
          <img
            src="../assets/icon/television_icon.svg"
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
            src="../assets/icon/airplane_icon.svg"
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
      load("#footer", "./footer.html");
    </script>
    <!-- events  -->
    <script src="../assets/events/script.js"></script>
  </body>
</html>