jQuery(function($) {

    var fn = function(){},
        win = $(window),
        fullscreenPos = $('.fullscreen'),
        navToggle = $('.uk-navbar-toggle'),
        offcanvasMenu = $('#offcanvasmenu'),
        offcanvasMenuLink = $('.uk-offcanvasmenu-bar li > a');

    fn = function(){

        setTimeout(function(){ fullscreenPos.css('height', win.height()); }, 10);

    };

    win.on('resize', function(){

        fn();

        return fn;

    }());

    offcanvasMenuLink.on('click', function(){

        if (!offcanvasMenu.hasClass('uk-hidden')) {

            offcanvasMenu.addClass('uk-hidden');

        }

    });

    $('#slides').slidesjs({
        navigation: false,
        pagination: false
    });

});
