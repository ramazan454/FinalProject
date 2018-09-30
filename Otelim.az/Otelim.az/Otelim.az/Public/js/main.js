$(document).ready(function () {

    $('#loadingDiv').fadeOut(1700);

    $('.navbar-toggler').on('click', function () {
        $('.animated-icon4').toggleClass('open');
    });

    $(".btnlocation").on("click", function () {
        if ($(".location").hasClass("locationon")) {
            $(".location").removeClass("locationon")
        } else {
            $(".location").addClass("locationon");
        }
    })
    if ($(".container-fluid").hasClass("news")) {
        $("footer").css("display", "none");
        ($(".none").css("display","none"))
    }
});

window.onload = function () {
    $(".loader").each(function () {
        $(this).attr("src", $(this).attr("data-src"));
    })
};