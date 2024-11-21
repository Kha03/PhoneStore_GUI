const toggleButtons = $(".toggleButton");
const arrowIcons = $(".arrowIcon");

if (toggleButtons.length > 0 && arrowIcons.length > 0) {
    toggleButtons.each(function (index) {
        $(this).on("click", function () {
            $(arrowIcons[index]).toggleClass("arrow-up");
        });
    });
}

// Khởi tạo thanh trượt
$(document).ready(function () {
    const checkboxes = $('input[name="priceRange"]');
    const sliderPrice = $("#sliderPrice");
    const sliderLabel = $('label[for="slider-range"]');
    const minValueDisplay = $("#min-value");
    const maxValueDisplay = $("#max-value");
    const hiddenMinInput = $("#hidden-min");
    const hiddenMaxInput = $("#hidden-max");
    const sliderRange = $("#slider-range");

    // Hàm để cập nhật giá trị cho slider
    function updateSliderWithValues(min, max) {
        sliderRange[0].noUiSlider.set([min, max]);
        minValueDisplay.text(min);
        maxValueDisplay.text(max);
    }

    // Cập nhật giá trị input ẩn khi chọn radio button
    checkboxes.on("change", function () {
        const checkbox = $(this);

        if (checkbox.prop("checked")) {
            sliderPrice.removeClass("show"); // Ẩn slider
            const [min, max] = checkbox.val().split("-");
            hiddenMinInput.val(min || 0);
            hiddenMaxInput.val(max || ""); // Rỗng nghĩa là không giới hạn
        }
    });

    // Cập nhật giá trị input ẩn khi thay đổi slider
    if (sliderRange.length) {
        const checkedCheckbox = $('input[name="priceRange"]:checked');
        let initialMin = 0;
        let initialMax = 100;
        if (checkedCheckbox.length) {
            const [min, max] = checkedCheckbox.val().split("-");
            initialMin = parseInt(min) / 1_000_000 || 0;
            initialMax = parseInt(max) / 1_000_000 || 100;
        }
        noUiSlider.create(sliderRange[0], {
            start: [initialMin, initialMax], // Giá trị khởi đầu (triệu)
            connect: true,
            range: {
                min: 0,
                max: 100, // triệu
            },
            step: 1,
            tooltips: [false, false],
        });

        sliderRange[0].noUiSlider.on("update", function (values) {
            const min = Math.round(values[0]) * 1_000_000; // Chuyển sang giá trị thực
            const max = Math.round(values[1]) * 1_000_000;

            hiddenMinInput.val(min);
            hiddenMaxInput.val(max);

            minValueDisplay.text(values[0]);
            maxValueDisplay.text(values[1]);
        });

        // Hiển thị hoặc ẩn slider khi click vào nhãn slider
        sliderLabel.on("click", function () {
            if (sliderPrice.hasClass("show")) {
                sliderPrice.removeClass("show"); // Ẩn slider nếu đang hiển thị
            } else {
                checkboxes.prop("checked", false); // Bỏ chọn tất cả radio buttons
                sliderPrice.addClass("show"); // Hiển thị slider
            }
        });
    }
    if (!$('input[name="priceRange"]:checked').length) {
        sliderPrice.addClass("show");
        const min = hiddenMinInput.data("min");
        const max = hiddenMaxInput.data("max");
        updateSliderWithValues(min / 1_000_000, max / 1_000_000);
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

