jQuery(function($) {

	var fn = function(){},
		win = $(window),
		fullscreenPos = $('.fullscreen'),
		offcanvasMenu = $('#offcanvasmenu'),
		offcanvasMenuLink = $('.uk-offcanvasmenu-bar li > a'),
		logo = $('.uk-logo');
		
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
	
	logo.on('click', function(){
		
		if (!offcanvasMenu.hasClass('uk-hidden')) {
		
			offcanvasMenu.addClass('uk-hidden');
		
		}
		
	});

});