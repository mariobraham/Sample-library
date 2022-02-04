document.addEventListener("turbolinks:load", function () {
  setTimeout(function () {
    $(".alert").alert('close');
  }, 5000);
})