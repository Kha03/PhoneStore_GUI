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
            load("#header", "/header");
            toastBootstrap.show(); // Hiển thị toast
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
// Add click event listener for remove button inside the offcanvas body
$('.btn-remove').on('click',  function() {
    const productVariantId = $(this).data('id');

    if (!confirm("Are you sure you want to remove this item from your cart?")) {
        return; // If not confirmed, do nothing
    }

    $.ajax({
        url: `${contextPath}/products/removeFromCart`,
        type: 'POST',
        data: { productId: productVariantId },
        contentType: 'application/x-www-form-urlencoded',
        processData: true,
        success: function(response) {
            console.log('Item removed successfully:', response);
            load("#header", "/header");
        },
        error: function(xhr, status, error) {
            console.error('Error removing item from cart:', error);
            alert("There was an error removing the item from your cart. Please try again.");
        }
    });
});
