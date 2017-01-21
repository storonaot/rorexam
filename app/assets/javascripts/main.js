document.addEventListener("DOMContentLoaded", ready);

function ready() {
  toggleMenu()
  console.log('ready');
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
