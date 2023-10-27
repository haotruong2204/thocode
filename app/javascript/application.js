// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "jquery";
import "controllers";

$(document).ready(function () {
  // switch mode
  $(".js-show-box").on("click", function (e) {
    $(".js-the-box").toggle("hidden");
  });
});
