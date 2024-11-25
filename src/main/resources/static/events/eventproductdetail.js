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

        const $colorInput = $("<input>")
            .attr({
                type: "radio",
                class: "btn-check",
                id: `color-${color.colorId}`,
                name: "colorOption",
                value: color.colorId,
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
    if (colors.length > 0) {
        $(`#color-${colors[0].colorId}`).prop("checked", true);
        selectColor(colors[0]);
    }
}

function selectColor(color) {
    // Hàm định dạng số theo kiểu có dấu phân cách hàng nghìn
    const formatCurrency = (value) => {
        return new Intl.NumberFormat('en-US', { minimumFractionDigits: 0 }).format(value);
    };

    // Cập nhật giá hiện tại
    $(".info_price-cost").text(`$ ${formatCurrency(color.price)}`);

    // Cập nhật chiết khấu
    const discountPercentage = color.sale ? `-${color.sale * 100}%` : "0%";
    $(".info_price-discount").text(discountPercentage);

    // Cập nhật giá cuối cùng
    const lastPrice = color.price * (1 - (color.sale / 100 || 0));
    $(".info_price-last").text(`$ ${formatCurrency(lastPrice)}`);
}

// Khởi tạo với bộ nhớ đầu tiên
const initialMemory = Object.keys(productMemories)[0];
if (initialMemory) {
    selectMemory(initialMemory);
}
