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
