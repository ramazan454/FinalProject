$(document).ready(function () {

$(".topslider").owlCarousel({
    items: 1,
    loop: true,
    autoplay: true,
    autoplayTimeout: 5000,
    smartSpeed: 500,
    autoplayHoverPause: true,
    animateOut: "fadeOut",
    nav: true,
    dotsEach: 1,
    navText: ["<i style='font-size:1.4em;padding-left: 8px;' class='fa fa-chevron-left'></i>", "<i style='font-size:1.4em;padding-right: 8px;' class='fa fa-chevron-right'></i>"]
    });

});