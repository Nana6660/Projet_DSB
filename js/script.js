$(".menu").click(function () {
  $(".menu").removeClass("active");
  $(this).addClass("active");
  s;
});

window.onscroll = function () {
  scrollFunction();
};

$(".imagesPrestations").click(function () {
  $(this).children(".detailFilms").toggle();
});

$(".close").click(function () {
  $(this).children(".detailFilms").toggle();
});

function scrollFunction() {
  if (
    document.body.scrollTop > 465 ||
    document.documentElement.scrollTop > 465
  ) {
    $(".navbar").addClass("fixed");
    $(".logo").show();
    $(".navbar .avatar2").show();
  } else {
    $(".navbar").removeClass("fixed");
    $(".logo").hide();
    $(".navbar .avatar2").hide();
  }
}

var el = document.querySelector(".resume");
var wordArray = el.innerHTML.split(" ");
while (el.scrollHeight > el.offsetHeight) {
  alert("a");
  wordArray.pop();
  el.innerHTML = wordArray.join(" ") + "...";
}
