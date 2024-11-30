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

    const discountPercentage = color.sale ? `-${color.sale * 100}%` : "0%";
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