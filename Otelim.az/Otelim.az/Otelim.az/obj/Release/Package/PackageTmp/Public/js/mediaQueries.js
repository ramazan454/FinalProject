$(document).ready(function () {

    var smalldevice = window.matchMedia('(max-width: 480px)');
    var mediumdevice = window.matchMedia('(max-width: 992px)');
    if (smalldevice.matches) {
        $(".news>img").attr("src", $(".news>img").attr("mobile-src"));
    }
    if (mediumdevice.matches) {
        $(".m1").css({ marginRight: ".5rem" });
    }
});