var jsTheme={init:function(){jsTheme.mobileNav.init(),jsTheme.forms.init(),jsTheme.mediaQuery.init()}};jsTheme.mobileNav={init:function(){jsTheme.mobileNav.enableMobileNav(),jsTheme.mobileNav.buildMobileNav()},enableMobileNav:function(){$("html").addClass("mobile-nav")},buildMobileNav:function(){var e=$(".main-header .header-row");e.prepend('<span class="main-nav-trigger"></span>');var i=$(".main-nav-trigger"),t=$(".main-nav");i.on("click",function(){t.toggle(),$(this).toggleClass("trigger-active")})}},jsTheme.forms={init:function(){$(".alert-box").on("click",function(e){e.preventDefault(),$(this).closest(".alert-box").fadeOut(300)})}},jsTheme.mediaQuery={init:function(){$(window).width()<680?($("#header-row").removeClass("row"),$(".project-overlay").show()):($("#header-row").addClass("row"),$(".project-overlay").hide())}},$(jsTheme.init);var pixelRatio=window.devicePixelRatio?window.devicePixelRatio:1;$(window).on("load",function(){pixelRatio>1&&$(".retina").each(function(){$(this).attr("src",$(this).attr("src").replace(".","@2x."))}),$(function(){$(".main-nav ul a").bind("click",function(e){var i=$(this);$("html, body").animate({scrollTop:$(i.attr("href")).offset().top+"px"},1e3),e.preventDefault()})}),$(function(){$(".back-to-top a").bind("click",function(e){var i=$(this);$("html, body").animate({scrollTop:$(i.attr("href")).offset().top+"px"},1e3),e.preventDefault()})}),$(function(){var e=window.location.search.split("?identifier=")[1];"contact"===e&&$(function(){var e=$("#contact");$("html, body").animate({scrollTop:$(e).offset().top+"px"},1e3),event.preventDefault()})})}),$(document).ready(function(){$(window).width()>680&&$(".project-article").hover(function(){$(this).find(".project-overlay").slideDown("fast")},function(){$(this).find(".project-overlay").slideUp("fast")});var e=window.matchMedia("(max-width: 680px)");$(window).resize(function(){e.matches?($("#header-row").removeClass("row"),$(".project-overlay").show()):($(".project-overlay").hide(),$("#header-row").addClass("row"),$(".project-article").hover(function(){$(this).find(".project-overlay").slideDown("fast")},function(){$(this).find(".project-overlay").slideUp("fast")}))})}),$(document).ready(function(){var e="<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwxMDB8NHw0fHx5ZXN8MXx1bmRlZmluZWR8bm8=10' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:444px; height: 444px' ></iframe>",i="<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwyMDB8NXwzfHx5ZXN8MXx1bmRlZmluZWR8bm8=' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:1055px; height: 633px' ></iframe>",t="<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwyNTB8OHwyfHx5ZXN8MXx1bmRlZmluZWR8bm8=' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:2088px; height: 522px' ></iframe>",o="<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwzMDB8MTB8Mnx8eWVzfDF8dW5kZWZpbmVkfG5v' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:3110px; height: 622px' ></iframe>",n="<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwzNTB8MTJ8Mnx8eWVzfDF8dW5kZWZpbmVkfG5v' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:4332px; height: 722px' ></iframe>";$(".instagram iframe").replaceWith($(window).width()<400?e:$(window).width()>399&&$(window).width()<1e3?i:$(window).width()>999&&$(window).width()<2e3?t:$(window).width()>1999&&$(window).width()<3e3?o:n);var a=window.matchMedia("(max-width: 399px)"),r=window.matchMedia("(max-width: 999px)"),c=window.matchMedia("(max-width: 1999px)"),d=window.matchMedia("(max-width: 2999px)");$(window).resize(function(){$(".instagram iframe").replaceWith(a.matches?e:r.matches?i:c.matches?t:d.matches?o:n)})});