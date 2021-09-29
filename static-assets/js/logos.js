$('.logos__container').owlCarousel({
    loop: true,
    margin: 0,
    dots: false,
    autoplay: true,
    autoplayTimeout: 1000,
    autoplayHoverPause: true,
    responsiveClass:true,
    responsive: {
        0: {
            items: 1
        },
        300: {
            items: 3
        },
        700: {
            items: 6
        },
        1200: {
            items: 8
        }
    }
});
$('.owl-two').owlCarousel({
    loop: true,
    margin: 0,
    dots: false,
    autoplay: true,
    autoplayTimeout: 1000,
    autoplayHoverPause: true,
    responsiveClass:true,
    responsive: {
        0: {
            items: 1
        },
        300: {
            items: 2
        },
        700: {
            items: 3
        },
        1200: {
            items: 5
        }
    }
});
$('.play').on('click',function(){
    owl.trigger('play.owl.autoplay', [1000])
})
$('.stop').on('click',function(){
    owl.trigger('stop.owl.autoplay')
})