document.addEventListener('turbolinks:load', () => {

  var dropDownLinks = document.querySelectorAll('.dropdown');

  function dropdown() {
    dropDownLinks.forEach(function(dropdown) {
      dropdown.addEventListener("click", (e) => {
        const dropdownTarget = dropdown.nextElementSibling;
        dropdownTarget.classList.toggle("hidden");
        e.preventDefault;
      })
    });
  }

  function init () {
    dropdown();
  }

  init();

});
