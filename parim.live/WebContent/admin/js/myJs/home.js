  $('.latest-shoes').owlCarousel({
        margin:2,
        nav: true,
        dots:false,
        loop:true,
        autoplay:true,
        autoplayTimeout:2500,
        autoplayHoverPause:true,
        navText:["<div class='nav-btn prev-slide'><i class='fas fa-angle-left'></i></div>","<div class='nav-btn next-slide'><i class='fas fa-angle-right'></i></div>"],
        responsiveClass:true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            800: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });

    $('.top-shoes').owlCarousel({
        rtl:true,
        margin:2,
        nav: true,
        dots:false,
        loop:true,
        autoplay:true,
        autoplayTimeout:2500,
        autoplayHoverPause:true,
        navText:["<div class='nav-btn prev-slide'><i class='fas fa-angle-left'></i></div>","<div class='nav-btn next-slide'><i class='fas fa-angle-right'></i></div>"],
        responsiveClass:true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            800: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });