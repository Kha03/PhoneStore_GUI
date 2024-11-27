$(document).ready(function () {
    setTimeout(function () {
        const currentUrl = window.location.href;
        if (currentUrl.includes('cart')) {
            $('#cartButton').hide();
        }
    }, 50);
    if ($(".addToCartForm").length > 0) {
        // Lắng nghe sự kiện click từ nút khác
        $("#addCartBtn").on("click", function (event) {
            event.preventDefault();
            const form = $(".addToCartForm")[0];
            const toastLiveExample = $("#liveToast")[0];
            const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveExample);
            const formData = new FormData(form);
            $.ajax({
                url: `${contextPath}/products/addToCart`,
                method: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                    console.log(response);
                    load("#header", "/header");
                    toastBootstrap.show();
                },
                error: function () {
                    console.error("Error adding to cart");
                },
            });
        });
    }
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
    let productVariantIdToDelete = null;
    $('#header').on('click', '.btn-remove', function () {
        productVariantIdToDelete = $(this).data('id');
        const modal = new bootstrap.Modal(document.getElementById('confirmDeleteModal'));
        modal.show();
    });
    $('#header').on('click', '#confirmDeleteBtn', function () {
        if (!productVariantIdToDelete) return;
        $.ajax({
            url: `${contextPath}/products/removeFromCart`,
            type: 'POST',
            data: {productId: productVariantIdToDelete},
            contentType: 'application/x-www-form-urlencoded',
            processData: true,
            success: function (response) {
                console.log('Item removed successfully:', response);
                productVariantIdToDelete = null;
                $('#confirmDeleteModal').modal('hide');
            },
            error: function (xhr, status, error) {
                console.error('Error removing item from cart:', error);
                alert("Có lỗi khi xóa sản phẩm khỏi giỏ hàng của bạn. Vui lòng thử lại.");
            },
            complete: function () {
                $('#confirmDeleteModal').on('hidden.bs.modal', function () {
                    load("#header", "/header");
                    $('body').css('overflow', 'auto');
                });
            }
        });
    });
});