$(".addToCartForm").on("submit", function (event) {
    event.preventDefault(); // Ngăn chặn hành động mặc định của form

    const toastLiveExample = $("#liveToast")[0];
    const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveExample);

    const formData = new FormData(this);

    $.ajax({
        url: `${contextPath}/products/addToCart`,
        method: 'POST',
        data: formData,
        processData: false,
        contentType: false,
        success: function (response) {
            console.log(response);
            toastBootstrap.show(); // Hiển thị thông báo toast
        },
        error: function () {
            console.error('Error adding to cart');
        }
    });
});

$(".addToCartForm").on("click", function (event) {
    event.stopPropagation();
});

$('#sortOptions').on('change', function () {
    var sortOrder = $(this).val();

    var url = new URL(window.location.href);

    var params = new URLSearchParams(url.search);

    params.set('sort', sortOrder);

    window.history.pushState({}, '', `${url.pathname}?${params.toString()}`);
    location.reload();
});
if ($('#resetButton').length > 0) {
    $('#resetButton').click(function () {
        window.location.href = window.location.pathname;
    });
}
if ($('.product_detail-link').length > 0) {
    $('.product_detail-link').click(function (event) {
        // event.preventDefault();
        console.log('Product detail link clicked!');
    });
}