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
        success: function ( response) {
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

$('#sortOptions').on('change', function() {
    var sortOrder = $(this).val();

    var url = new URL(window.location.href);

    var params = new URLSearchParams(url.search);

    params.set('sort', sortOrder);

    window.history.pushState({}, '', `${url.pathname}?${params.toString()}`);
    location.reload();
});