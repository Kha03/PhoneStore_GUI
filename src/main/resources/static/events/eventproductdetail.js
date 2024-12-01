function selectMemory(memoryName) {
    const $colorOptionsContainer = $("#color-options");
    $colorOptionsContainer.empty(); // Xóa danh sách màu cũ

    // Lấy danh sách màu từ bộ nhớ được chọn
    const colors = productMemories[memoryName];
    if (!colors) {
        console.error(`Không tìm thấy màu nào cho bộ nhớ: ${memoryName}`);
        return;
    }

    // Render danh sách màu sắc
    colors.forEach(color => {
        const $wrapperDiv = $("<div>").addClass("ms-2");
        const idFound = Object.keys(colorKey).find(key => colorKey[key] === color.colorId) || null;
        const $colorInput = $("<input>")
            .attr({
                type: "radio",
                class: "btn-check",
                id: `color-${color.colorId}`,
                name: "colorId",
                value: idFound,
                autocomplete: "off",
            });

        if (color.quantity === 0) {
            $colorInput.prop("disabled", true);
        }

        const $colorLabel = $("<label>")
            .addClass("btn btn-outline-dark btn-sm")
            .attr("for", `color-${color.colorId}`)
            .text(color.colorId);

        // Gắn sự kiện chọn màu
        $colorInput.on("click", () => selectColor(color));

        $wrapperDiv.append($colorInput, $colorLabel);
        $colorOptionsContainer.append($wrapperDiv);
    });

    // Tự động chọn màu đầu tiên nếu có
    const firstAvailableColor = colors.find(color => color.quantity > 0);
    if (firstAvailableColor) {
        $(`#color-${firstAvailableColor.colorId}`).prop("checked", true);
        selectColor(firstAvailableColor);
        $("#addCartBtn").prop("disabled", false);
        $("#buyBtn").prop("disabled", false);
    }
    else {
        $("#addCartBtn").prop("disabled", true);
        $("#buyBtn").prop("disabled", true);
    }
}

function selectColor(color) {
    const formatCurrency = (value) => {
        return new Intl.NumberFormat('en-US', { minimumFractionDigits: 0 }).format(value);
    };

    $(".info_price-cost").text(`$ ${formatCurrency(color.price)}`);

    const discountPercentage = color.sale
        ? `-${(color.sale * 100).toFixed(0)}%`
        : "0%";
    $(".info_price-discount").text(discountPercentage);

    const lastPrice = Math.round(color.price * (1 - (color.sale || 0)));
    $(".info_price-last").text(`$ ${formatCurrency(lastPrice)}`);
}



// Khởi tạo với bộ nhớ đầu tiên
const initialMemory = Object.keys(productMemories)[0];
if (initialMemory) {
    selectMemory(initialMemory);
}

$('#imageUpload').on('change', function() {
    const previewContainer = $('#previewContainer');
    const files = this.files;
    previewContainer.html('');

    if (files.length > 5) {
        $('#errorModal').modal('show');
        $(this).val('');
        return;
    }

    for (let i = 0; i < files.length; i++) {
        const file = files[i];
        const reader = new FileReader();

        reader.onload = function(e) {
            const img = $('<img>').attr('src', e.target.result).addClass('img-fluid');
            previewContainer.append(img);
        }
        reader.readAsDataURL(file);
    }
});
const thumbnails = $(".product-thumbnail");
const maxVisible = 6;

if (thumbnails.length > maxVisible) {
    thumbnails.slice(maxVisible).hide();

    const remaining = thumbnails.length - maxVisible;
    $(".product_detail-more").removeClass("d-none").find("span").text(remaining);
}

thumbnails.on("click", function () {
    const imageUrl = $(this).data("image");

    $(".product_detail-img-content img").attr("src", imageUrl);

    thumbnails.removeClass("active");
    $(this).addClass("active");
});
$(".product_detail-more").on("click", function () {
    const thumbnails = $(".product-thumbnail"); // Lấy danh sách ảnh phụ
    const mainImage = $(".product_detail-img-content img").attr("src"); // Ảnh chính hiện tại

    // Hiển thị ảnh chính trong modal với animation fade-in
    $("#modalMainImage").css("opacity", "0").attr("src", mainImage).animate({ opacity: 1 }, 300);

    // Xóa ảnh phụ cũ trong slider
    $(".sub-images-slider").empty();

    // Thêm ảnh phụ vào slider
    thumbnails.each(function () {
        const imageUrl = $(this).data("image");
        const subImage = `
            <img src="${imageUrl}" alt="Sub Image">
        `;
        $(".sub-images-slider").append(subImage);
    });

    // Hiển thị modal
    $("#imageModal").modal("show");
});

// Khi click vào ảnh phụ, thay đổi ảnh chính với hiệu ứng
$(document).on("click", ".sub-images-slider img", function () {
    const imageUrl = $(this).attr("src");
    $("#modalMainImage").css("opacity", "0").attr("src", imageUrl).animate({ opacity: 1 }, 300); // Thay đổi ảnh chính với animation
});
$('#feedbackbtn').click(function(event) {
    if (!token) {
        event.preventDefault();
        $('#loginModal').modal('show');
    }
});