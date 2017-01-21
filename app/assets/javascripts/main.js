document.addEventListener("DOMContentLoaded", ready);

function ready() {
  toggleMenu()
}

function toggleMenu() {
  var hasClass = document.querySelector('.js-toggle')
  if (hasClass) {
    var toggle = document.querySelector('.js-toggle')
    var menu = document.querySelector('.x-header__user')
    toggle.addEventListener('click', function() {
      menu.classList.toggle('is-active')
    })
  }
}

// function updateSlider(slideAmount) {
//   //get the element
//   var displayValue = document.getElementById("chosen_value");
//   //show the amount
//   console.log("IN updateSlider:  - slideAmount = " + slideAmount );
//   displayValue.innerHTML = slideAmount;
//
//   //get the element
//   var pic = document.getElementById("pic");
//   //set the dimensions
//   //   pic.style.width = slideAmount + "%";
//   //   pic.style.height = slideAmount + "%";
//   // return slideAmount;
// }
