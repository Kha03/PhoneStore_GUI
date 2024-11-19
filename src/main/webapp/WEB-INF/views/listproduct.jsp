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
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/pagination.min.js"></script>
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
      <!-- products -->
      <div class="row mt-3">
        <div class="col-3">
          <h5 class="d-inline-flex align-items-center">
            <img src="../assets/icon/document-filter.svg" alt="" /><span
              class="ps-2 m-0"
              >Filter</span
            >
          </h5>
          <!-- brand -->
          <form class="filter_group">
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
                    src="../assets/icon/arrow-down.svg"
                    alt="Arrow"
                    class="arrowIcon"
                  />
                </a>
              </div>
              <div id="FilterBrand" class="collapse show">
                <div class="card-body p-0">
                  <ul class="list-group borderless">
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        value=""
                        id="firstCheckboxStretched"
                        name="brand"
                      />
                      <label
                        class="form-check-label stretched-link"
                        for="firstCheckboxStretched"
                        >SamSung</label
                      >
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        value=""
                        id="secondCheckboxStretched"
                        name="brand"
                      />
                      <label
                        class="form-check-label stretched-link"
                        for="secondCheckboxStretched"
                        >Iphone</label
                      >
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        value=""
                        id="thirdCheckboxStretched"
                        name="brand"
                      />
                      <label
                        class="form-check-label stretched-link"
                        for="thirdCheckboxStretched"
                        >Xiaomi</label
                      >
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        value=""
                        id="fourthCheckboxStretched"
                        name="brand"
                      />
                      <label
                        class="form-check-label stretched-link"
                        for="fourthCheckboxStretched"
                        >Huawei</label
                      >
                    </li>
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
                    src="../assets/icon/arrow-down.svg"
                    alt="Arrow"
                    class="arrowIcon"
                  />
                </a>
              </div>
              <div id="FilterPrice" class="collapse show">
                <div class="card-body p-0">
                  <div class="mt-2 d-flex flex-wrap gap-2">
                    <input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-price-1"
                      autocomplete="off"
                      name="priceRange"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-price-1">
                      Dưới 7 Triệu
                    </label>

                    <input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-price-2"
                      autocomplete="off"
                      name="priceRange"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-price-2">
                      7 - 15 Triệu
                    </label>

                    <input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-price-3"
                      autocomplete="off"
                      name="priceRange"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-price-3">
                      15 - 25 Triệu </label
                    ><input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-price-4"
                      autocomplete="off"
                      name="priceRange"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-price-4">
                      25 Triệu trở lên</label
                    ><input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-price-5"
                      autocomplete="off"
                      name="priceRange"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-price-5">
                      15 - 25 Triệu
                    </label>
                  </div>
                  <div class="mt-2">
                    <label
                      for="slider-range"
                      class="form-label"
                      data-bs-toggle="collapse"
                      href="#sliderPrice"
                      style="cursor: pointer; text-decoration: underline"
                      >Khoảng giá khác:</label
                    >
                    <div id="sliderPrice" class="collapse p-2">
                      <div id="slider-range"></div>
                      <p class="mt-3">
                        Giá từ: <span id="min-value">0</span> triệu -
                        <span id="max-value">100</span> triệu
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
                    src="../assets/icon/arrow-down.svg"
                    alt="Arrow"
                    class="arrowIcon"
                  />
                </a>
              </div>
              <div id="FilterRam" class="collapse show">
                <div class="card-body p-0">
                  <ul class="list-group borderless">
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="ram"
                        value="4GB"
                        id="ram1"
                      />
                      <label class="form-check-label" for="ram1">4GB</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="ram"
                        value="6GB"
                        id="ram2"
                      />
                      <label class="form-check-label" for="ram2">6GB</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="ram"
                        value="8GB"
                        id="ram3"
                      />
                      <label class="form-check-label" for="ram3">8GB</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="ram"
                        value="12GB"
                        id="ram4"
                      />
                      <label class="form-check-label" for="ram4">12GB</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="ram"
                        value="16GB"
                        id="ram5"
                      />
                      <label class="form-check-label" for="ram5">16GB</label>
                    </li>
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
                    src="../assets/icon/arrow-down.svg"
                    alt="Arrow"
                    class="arrowIcon"
                  />
                </a>
              </div>
              <div id="FilterDriveSize" class="collapse show">
                <div class="card-body p-0">
                  <ul class="list-group borderless">
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="driveSize"
                        value="64GB"
                        id="drive1"
                      />
                      <label class="form-check-label" for="drive1">64GB</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="driveSize"
                        value="128GB"
                        id="drive2"
                      />
                      <label class="form-check-label" for="drive2">128GB</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="driveSize"
                        value="256GB"
                        id="drive3"
                      />
                      <label class="form-check-label" for="drive3">256GB</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="driveSize"
                        value="512GB"
                        id="drive4"
                      />
                      <label class="form-check-label" for="drive4">512GB</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="driveSize"
                        value="1TB"
                        id="drive5"
                      />
                      <label class="form-check-label" for="drive5">1TB</label>
                    </li>
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
                    src="../assets/icon/arrow-down.svg"
                    alt="Arrow"
                    class="arrowIcon"
                  />
                </a>
              </div>
              <div id="FilterScanningFrequency" class="collapse show">
                <div class="card-body p-0">
                  <ul class="list-group borderless">
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="scanningFrequency"
                        value="60Hz"
                        id="scan1"
                      />
                      <label class="form-check-label" for="scan1">60Hz</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="scanningFrequency"
                        value="90Hz"
                        id="scan2"
                      />
                      <label class="form-check-label" for="scan2">90Hz</label>
                    </li>
                    <li class="list-group-item">
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name="scanningFrequency"
                        value="120Hz"
                        id="scan3"
                      />
                      <label class="form-check-label" for="scan3">120Hz</label>
                    </li>
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
                    src="../assets/icon/arrow-down.svg"
                    alt="Arrow"
                    class="arrowIcon"
                  />
                </a>
              </div>
              <div id="UseNeed" class="collapse show">
                <div class="card-body p-0">
                  <div class="mt-2 d-flex flex-wrap gap-2">
                    <input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-use-1"
                      autocomplete="off"
                      name="useneed"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-use-1">
                      play games
                    </label>

                    <input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-use-2"
                      autocomplete="off"
                      name="useneed"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-use-2">
                      Huge battery over 5000 mAh
                    </label>

                    <input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-use-3"
                      autocomplete="off"
                      name="useneed"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-use-3">
                      Take photos and film </label
                    ><input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-use-4"
                      autocomplete="off"
                      name="useneed"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-use-4">
                      Thin and light</label
                    ><input
                      type="checkbox"
                      class="btn-check"
                      id="btn-check-use-5"
                      autocomplete="off"
                      name="useneed"
                    />
                    <label class="btn btn-outline-dark" for="btn-check-use-5">
                      Livestream
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <div
              class="mt-3 d-flex justify-content-center gap-2 border-top border-1 pt-2"
            >
              <button class="btn btn-outline-danger" type="reset">Reset</button>
              <button class="btn btn-outline-dark" type="submit">
                See 200 Results
              </button>
            </div>
          </form>
        </div>
        <div class="col-9">
          <div class="row mb-3">
            <div class="offset-9 col-3 pe-4">
              <form>
                <select class="form-select filter-select" id="sortOptions">
                  <option value="featured">Sort by: Featured</option>
                  <option value="price-asc">Price: ascending</option>
                  <option value="price-desc">Price: descending</option>
                  <option value="new-arrivals">New Arrivals</option>
                </select>
              </form>
            </div>
          </div>
          <div class="row gy-4">
            <!-- item product -->
            <div class="col-4">
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
                    src="../assets/imgs/p1.png"
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                    src="../assets/imgs/p1.png"
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                    src="../assets/imgs/p1.png"
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                    src="../assets/imgs/p1.png"
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
            <div class="col-4">
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
                      <img src="../assets/icon/start-icon.svg" alt="Star" />
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
          <div class="row d-flex justify-content-center mt-3">
            <div class="col-3">
              <nav aria-label="Page navigation" id="pagination"></nav>
              <div id="data-container"></div>
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