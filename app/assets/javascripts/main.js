
$(document).ready(function () {
    var upperNav = $(".upper-nav").innerHeight(),
    mainNav = $(".navbar").innerHeight(),
    windowHei = $(window).height();

    $(".slide, .carousel-item, .head-info").height(windowHei - (upperNav + mainNav))

    //window scroll

    var navPos = $("nav").offset().top;
    $("nav").wrap('<div class="conta"></div>');
    $(".conta").height($("nav").innerHeight());

    $(window).on("scroll", function () {

        var winScroll = $(window).scrollTop();

        if (winScroll >= navPos) {

            $("nav").addClass("fixed");

            $("nav .navbar-brand").css({
                fontSize: 25 + "px",
            })

            } else {
            $("nav").removeClass("fixed");

            $("nav .navbar-brand").css({
                fontSize: 35 + "px",
            })
        }


        if (winScroll >= 150) {
            $(".go-up").css({
                right: 10 + "px",
            })
        } else {
            $(".go-up").css({
                right: -500 + "px",
            })
        }
    })

    //Submenu

    $(".menu a").on("click", function () {

        if ($(".submenu").height() == 0) {

            $(".submenu").css("height", 131 + "px");

        } else {
            $(".submenu").css("height", 0 + "px");
        }

    })

    //Slider Informations

    $(window).on("load", function () {

        var sliderArr = ["h2", "span", "a"],
            i;

        for (i = 0; i <= 3; i++) {

            $(".head-info >" + sliderArr[i]).delay(300 + i).fadeIn(500);
        }
    })

    //article show

    $(".article-nav ul li").on("click", function () {
        var getId = $(this).data("type");

        $(".article-body > div").hide();
        $(getId).fadeIn();

        $(this).addClass("active").siblings().removeClass("active");
    })


    //pormo video

    $(".pick-line .owl-conta > div img").on("click", function () {
        var currentVideo = $(this).data("type");
        $(".current-video iframe").attr("src", "https://www.youtube.com/embed/" + currentVideo);
        $(".video-slider .current-info").hide();
        $("#" + $(this).data("info")).fadeIn();
    })


    $(".go-up i").on("click", function () {
        $("html, body").animate({
            scrollTop:0,
        })
    })

    $('.owl-carousel').owlCarousel({
        items:4,
    });

    $('.tooltip').tooltipster({
        interactive:true,
        maxWidth:550,
        contentCloning: true,
        minWidth:250
    });


})
$(document).ready(function() {
    $('#owner')
      .on('cocoon:before-insert', function() {
        $("#owner_from_list").hide();
        $("#owner a.add_fields").hide();
      })
      .on('cocoon:after-insert', function() {
        /* ... do something ... */
      })
      .on("cocoon:before-remove", function() {
        $("#owner_from_list").show();
        $("#owner a.add_fields").show();
      })
      .on("cocoon:after-remove", function() {
        /* e.g. recalculate order of child items */
      });

    // example showing manipulating the inserted/removed item

    $('#tasks')
      .on('cocoon:before-insert', function(e,task_to_be_added) {
        task_to_be_added.fadeIn('slow');
      })
      .on('cocoon:after-insert', function(e, added_task) {
        // e.g. set the background of inserted task
        added_task.css("background","red");
      })
      .on('cocoon:before-remove', function(e, task) {
        // allow some time for the animation to complete
        $(this).data('remove-timeout', 1000);
        task.fadeOut('slow');
      });
});