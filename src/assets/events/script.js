const toggleButtons = document.querySelectorAll(".toggleButton");
const arrowIcons = document.querySelectorAll(".arrowIcon");

toggleButtons.forEach((button, index) => {
  button.addEventListener("click", () => {
    arrowIcons[index].classList.toggle("arrow-up");
  });
});
// Khởi tạo thanh trượt
window.onload = function () {
  var slider = document.getElementById("slider-range");

  if (slider) {
    // check slider
    noUiSlider.create(slider, {
      start: [7, 15], //intial value
      connect: true,
      range: {
        min: 0,
        max: 100,
      },
      step: 1,
      tooltips: [false, false],
    });

    var minValue = document.getElementById("min-value");
    var maxValue = document.getElementById("max-value");

    slider.noUiSlider.on("update", function (values, handle) {
      if (handle === 0) {
        minValue.innerHTML = Math.round(values[0]);
      } else {
        maxValue.innerHTML = Math.round(values[1]);
      }
    });
  }
};

const checkboxes = document.querySelectorAll('input[name="priceRange"]');
const sliderPrice = document.getElementById("sliderPrice");
const sliderLabel = document.querySelector('label[for="slider-range"]');

// hide slider if any checkbox is selected
checkboxes.forEach((checkbox) => {
  checkbox.addEventListener("change", function () {
    if (Array.from(checkboxes).some((checkbox) => checkbox.checked)) {
      sliderPrice.classList.remove("show");
    }
  });
});
// uncheck all checkboxes when slider is shown
sliderLabel.addEventListener("click", function () {
  checkboxes.forEach((checkbox) => {
    checkbox.checked = false;
  });
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

// Initialize pagination
$("#pagination").pagination({
  dataSource: [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21,
    22, 23, 25, 26, 27, 28, 29, 30, 31, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
    12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 25, 26, 27, 28, 29, 30, 31,
    32,
  ], // Your data array
  prevText: '<img src="../assets/icon/arrow-left_page.svg"/>',
  nextText: '<img src="../assets/icon/arrow-right_page.svg"/>',
  pageSize: 4, // Adjust the number of items per page
  pageRange: 1,
  callback: function (data, pagination) {
    var html = template(data);
    dataContainer.html(html);
  },
});
