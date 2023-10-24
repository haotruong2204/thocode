"use strict";
var ready = (callback) => {
  if (document.readyState != "loading") callback();
  else document.addEventListener("DOMContentLoaded", callback);
};

function handleClick(e) {
  let main = document.getElementById("toastr-container");
  console.log("ds;lkjhhh");

  main.removeChild(e.target.parentNode);
}

ready(() => {
  const closeToast = document.querySelector(".toastr-close-button");
  closeToast?.addEventListener("click", handleClick);
});
