document.addEventListener("turbolinks:load", () => {
  const dropDownLinks = document.querySelectorAll('.dropdown');
  console.log(dropDownLinks);
  const dropDownElement = document.querySelector('.drop-js');

  function dropdown() {
    dropDownLinks.forEach(function(dropdown) {
      dropdown.addEventListener("click", (e) => {
        const dropdownTarget = dropdown.nextElementSibling;
        console.log(dropdownTarget);
        if (e.target.nextElementSibling != null) {
          dropdownTarget.classList.toggle("hidden");
          e.preventDefault();
        }
      })
    });
  }


  function init () {
    dropdown();
  }

  init();

});