var jsTheme =
{
	// init, something like a constructor
	init: function()
	{
		jsTheme.mobileNav.init();
		jsTheme.forms.init();
		jsTheme.mediaQuery.init();
		//console.log("javascript is locked and loaded!") // for testing purposes. Check your console. Delete after you finished reading this. :-)
	}

};

jsTheme.mobileNav =
{
	init: function()
	{
		jsTheme.mobileNav.enableMobileNav();
		jsTheme.mobileNav.buildMobileNav();
	},

	// CSS is based on the class .mobile-nav
	//
	enableMobileNav: function()
	{
		$("html").addClass("mobile-nav");
	},

	// build mobile nav
	buildMobileNav: function()
	{
		var navHolder = $('.navigation');

		navHolder.prepend('<span class="main-nav-trigger">menu</span>');

		var trigger = $('.main-nav-trigger');
		var nav = $('.main-nav');

		trigger.on('click', function() {
			nav.toggle();
			$(this).toggleClass("trigger-active");
		});
	}

};

jsTheme.forms =
{
	init: function()
	{
		$('.alert-box').on('click', function(e)
		{
			e.preventDefault();
			$(this).closest('.alert-box').fadeOut(300);
		});
	}

};

jsTheme.mediaQuery =
{
	init: function()
	{
		if ($(window).width() < 680) {
		    $('#nav-row').removeClass('row');

		} else {
		    $('#nav-row').addClass('row');
		}
	}
};



$(jsTheme.init);



// JQuery

// Set pixelRatio to 1 if the browser doesn't offer it up.
var pixelRatio = !!window.devicePixelRatio ? window.devicePixelRatio : 1;
 
// Rather than waiting for document ready, where the images
// have already loaded, we'll jump in as soon as possible.
$(window).on("load", function() {
    if (pixelRatio > 1) {
        $('.retina').each(function() {
 
            // Very naive replacement that assumes no dots in file names.
            $(this).attr('src', $(this).attr('src').replace(".","@2x."));
        });
    }

	$(function() {
	    $('.main-nav ul a').bind('click',function(event){
	        var $anchor = $(this);
	 
	        $('html, body').animate({
	            scrollTop: $($anchor.attr('href')).offset().top + "px"
	        }, 1000);
	        event.preventDefault();
	    });
	});

	$(function() {
	    $('.back-to-top a').bind('click',function(event){
	        var $anchor = $(this);
	 
	        $('html, body').animate({
	            scrollTop: $($anchor.attr('href')).offset().top + "px"
	        }, 1000);
	        event.preventDefault();
	    });
	});


	//
	// function to get identifier
	//


	$(function() {
	   var iden_id = window.location.search.split('?identifier=')[1];
		if(iden_id === "contact") 
		{
			$(function() {
		        var $anchor = $("#contact");
		 
		        $('html, body').animate({
		            scrollTop: $($anchor).offset().top + "px"
		        }, 1000);
		        event.preventDefault();
			}); 
		}
	 });



	//
	// Navigation row
	//

	var mq = window.matchMedia( "(max-width: 680px)" );

	$(window).resize(function() {
 		if (mq.matches) {			
		    $('#nav-row').removeClass('row');
		}

		else {
		    $('#nav-row').addClass('row');

		}
	
	});


});






