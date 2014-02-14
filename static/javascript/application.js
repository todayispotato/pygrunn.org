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
	
	var hideOffCanvasMenu = function(){
		
		if (!offcanvasMenu.hasClass('uk-hidden')) {
		
			offcanvasMenu.addClass('uk-hidden');
		
		}
		
	};
	
	offcanvasMenuLink.on('click', function(){
		
		hideOffCanvasMenu();
		
	});
	
	logo.on('click', function(){
		
		hideOffCanvasMenu();
		
		$('html,body').stop().animate({ scrollTop: 0 }, 600, 'easeOutExpo');
		
	});
	
	$(document).ready(function() {
	
		$('.fancybox').fancybox({
			padding: 1,
			margin: 30
		});
		
	});

});