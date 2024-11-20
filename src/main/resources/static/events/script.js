const toggleButtons = document.querySelectorAll(".toggleButton");
const arrowIcons = document.querySelectorAll(".arrowIcon");

if (toggleButtons.length > 0 && arrowIcons.length > 0) {
    toggleButtons.forEach((button, index) => {
        button.addEventListener("click", () => {
            arrowIcons[index].classList.toggle("arrow-up");
        });
    });
}
// Khởi tạo thanh trượt
document.addEventListener("DOMContentLoaded", function () {
    const checkboxes = document.querySelectorAll('input[name="priceRange"]');
    const sliderPrice = document.getElementById("sliderPrice");
    const sliderLabel = document.querySelector('label[for="slider-range"]');
    const minValueDisplay = document.getElementById("min-value");
    const maxValueDisplay = document.getElementById("max-value");
    const hiddenMinInput = document.getElementById("hidden-min");
    const hiddenMaxInput = document.getElementById("hidden-max");
    const sliderRange = document.getElementById("slider-range");

    // Update hidden input based on radio button selection
    checkboxes.forEach((checkbox) => {
        checkbox.addEventListener("change", function () {
            if (checkbox.checked) {
                sliderPrice.classList.remove("show"); // Hide slider
                const [min, max] = checkbox.value.split("-");
                hiddenMinInput.value = min || 0;
                hiddenMaxInput.value = max || ""; // Empty means no limit

                minValueDisplay.textContent = parseInt(min || 0) / 1_000_000;
                maxValueDisplay.textContent = max ? parseInt(max) / 1_000_000 : "Không giới hạn";
            }
        });
    });

    // Update hidden input based on slider change
    if (sliderRange) {
        noUiSlider.create(sliderRange, {
            start: [7, 15], // Initial values in triệu
            connect: true,
            range: {
                min: 0,
                max: 100, // triệu
            },
            step: 1,
            tooltips: [false, false],
        });

        sliderRange.noUiSlider.on("update", function (values) {
            const min = Math.round(values[0]) * 1_000_000; // Convert to actual value
            const max = Math.round(values[1]) * 1_000_000;

            hiddenMinInput.value = min;
            hiddenMaxInput.value = max;

            minValueDisplay.textContent = values[0];
            maxValueDisplay.textContent = values[1];
        });

        // Show slider and uncheck all radios when slider label is clicked
        sliderLabel.addEventListener("click", function () {
            checkboxes.forEach((checkbox) => {
                checkbox.checked = false;
            });
            sliderPrice.classList.add("show");
        });
    }
});

// Define the data container
var dataContainer = $("#data-container");

// Define the template function to generate HTML
function template(data) {
    var html = `<ul class="pagination">`;
    $.each(data, function (index, item) {
        html += `<li  class="page-item"><a class="page-link" href="#!">${item}</a></li>`;
    });
    html += "</ul>";
    return html;
}

if ($("#pagination").length > 0) {
    // Initialize pagination
    $("#pagination").pagination({
        dataSource: [
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21,
            22, 23, 25, 26, 27, 28, 29, 30, 31, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
            12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 25, 26, 27, 28, 29, 30,
            31, 32,
        ], // Your data array
        prevText: '<img src="../icon/arrow-left_page.svg"/>',
        nextText: '<img src="../icon/arrow-right_page.svg"/>',
        pageSize: 4, // Adjust the number of items per page
        pageRange: 1,
        callback: function (data, pagination) {
            var html = template(data);
            // dataContainer.html(html);
        },
    });
}

if ($(".info_color").length > 0) {
    $(".info_color").on("click", function () {
        $(".info_color").removeClass("active");
        $(this).addClass("active");
    });
}

if ($('#resetButton').length > 0) {
    $('#resetButton').click(function () {
        // Bỏ chọn tất cả các checkbox với name="memory"
        $('input[name="memory"]').prop('checked', false);

        // Reload lại trang mà không thay đổi các tham số URL
        window.location.href = window.location.pathname;
    });
}
if ($('.product_detail-link').length > 0) {
    $('.product_detail-link').click(function (event) {
        event.preventDefault();
        console.log('Product detail link clicked!');
    });
}

