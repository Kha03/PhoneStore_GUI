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
        sliderRange.length && sliderRange[0].noUiSlider.set([min, max]);
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

        sliderLabel.on("click", function () {
            if (sliderPrice.hasClass("show")) {
                sliderPrice.removeClass("show");
            } else {
                checkboxes.prop("checked", false);
                sliderPrice.addClass("show");
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


if ($("#pagination").length > 0) {
    // Initialize pagination
    $("#pagination").pagination({
        dataSource: new Array(totalPages),
        prevText: '<img src="../icon/arrow-left_page.svg"/>',
        nextText: '<img src="../icon/arrow-right_page.svg"/>',
        pageSize:1,
        pageRange: 2,
        pageNumber: page + 1,
        afterPageOnClick: function (event, pageNumber) {
            const url = new URL(window.location.href);
            url.searchParams.set('page', pageNumber - 1);
            window.location.href = url.href;
        }, afterPreviousOnClick: function (event, pageNumber) {
            const url = new URL(window.location.href);
            url.searchParams.set('page', pageNumber - 1);
            window.location.href = url.href;
        }, afterNextOnClick: function (event, pageNumber) {
            const url = new URL(window.location.href);
            url.searchParams.set('page', pageNumber - 1);
            window.location.href = url.href;
        }
    });
}

if ($(".info_color").length > 0) {
    $(".info_color").on("click", function () {
        $(".info_color").removeClass("active");
        $(this).addClass("active");
    });
}



