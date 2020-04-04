$(document).ready(function(){

	/** SIDEBAR FUNCTION **/
//	$('.sidebar-left ul.sidebar-menu li a').click(function() {
//		"use strict";
//		$('.sidebar-left li').removeClass('active');
//		$(this).closest('li').addClass('active');	
//		var checkElement = $(this).next();
//			if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
//				$(this).closest('li').removeClass('active');
//				checkElement.slideUp('fast');
//			}
//			if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
//				$('.sidebar-left ul.sidebar-menu ul:visible').slideUp('fast');
//				checkElement.slideDown('fast');
//			}
//			if($(this).closest('li').find('ul').children().length == 0) {
//				return true;
//				} else {
//				return false;	
//			}		
//	});

	if ($(window).width() < 1025) {
		$(".sidebar-left").removeClass("sidebar-nicescroller");
		$(".sidebar-right").removeClass("sidebar-nicescroller");
		$(".nav-dropdown-content").removeClass("scroll-nav-dropdown");
	}
	/** END SIDEBAR FUNCTION **/
	
	
	/** BUTTON TOGGLE FUNCTION **/
	$(".btn-collapse-sidebar-left").click(function(){
		"use strict";
		if($("#btn-collapse-sidebar-left").hasClass("iconleft")){
			$("#btn-collapse-sidebar-left").removeClass("iconleft");
			$("#btn-collapse-sidebar-left").addClass("iconright");
		}else{
			$("#btn-collapse-sidebar-left").removeClass("iconright");
			$("#btn-collapse-sidebar-left").addClass("iconleft");
		}

		$(".top-navbar").toggleClass("toggle");
		$(".sidebar-left").toggleClass("toggle");
		$(".page-content").toggleClass("toggle");
		$(".icon-dinamic").toggleClass("rotate-180");
	});
	$(".btn-collapse-sidebar-right").click(function(){
		"use strict";
		$(".top-navbar").toggleClass("toggle-left");
		$(".sidebar-left").toggleClass("toggle-left");
		$(".sidebar-right").toggleClass("toggle-left");
		$(".page-content").toggleClass("toggle-left");
	});
	$(".btn-collapse-nav").click(function(){
		"use strict";
		$(".icon-plus").toggleClass("rotate-45");
	});
	/** END BUTTON TOGGLE FUNCTION **/
	
	
	
	

	/** BEGIN TOOLTIP FUNCTION **/

//	$('.popovers').popover({
//	  selector: "[data-toggle=popover]",
//	  container: "body"
//	});
	/** END TOOLTIP FUNCTION **/
	
	
	/** NICESCROLL AND SLIMSCROLL FUNCTION **/
    $(".sidebar-nicescroller").niceScroll({
		cursorcolor: "#121212",
		cursorborder: "0px solid #fff",
		cursorborderradius: "0px",
		cursorwidth: "0px"
	});
	$(".sidebar-nicescroller").getNiceScroll().resize();
    $(".right-sidebar-nicescroller").niceScroll({
		cursorcolor: "#111",
		cursorborder: "0px solid #fff",
		cursorborderradius: "0px",
		cursorwidth: "0px"
	});
	$(".right-sidebar-nicescroller").getNiceScroll().resize();
	
	$(function () {
		"use strict";
		$('.scroll-nav-dropdown').slimScroll({
			height: '350px',
			position: 'right',
			size: '4px',
			railOpacity: 0.3
		});
	});
	
	/** END NICESCROLL AND SLIMSCROLL FUNCTION **/
	
	
	
	
	/** BEGIN PANEL HEADER BUTTON COLLAPSE **/
	$(function () {
		"use strict";
		$('.collapse').on('show.bs.collapse', function() {
			var id = $(this).attr('id');
			$('button.to-collapse[data-target="#' + id + '"]').html('<i class="fa fa-chevron-up"></i>');
		});
		$('.collapse').on('hide.bs.collapse', function() {
			var id = $(this).attr('id');
			$('button.to-collapse[data-target="#' + id + '"]').html('<i class="fa fa-chevron-down"></i>');
		});
		
		$('.collapse').on('show.bs.collapse', function() {
			var id = $(this).attr('id');
			$('a.block-collapse[href="#' + id + '"] span.right-icon').html('<i class="glyphicon glyphicon-minus icon-collapse"></i>');
		});
		$('.collapse').on('hide.bs.collapse', function() {
			var id = $(this).attr('id');
			$('a.block-collapse[href="#' + id + '"] span.right-icon').html('<i class="glyphicon glyphicon-plus icon-collapse"></i>');
		});
	});
	/** END PANEL HEADER BUTTON COLLAPSE **/
	
	
	function checkBackTop(){
		if($(window).scrollTop() > 60){
			$('#back-top').addClass('visible');
			$('#back-top').css("display","block");
		}  else if( $(window).scrollTop() <= 60 ){
			$('#back-top').removeClass('visible');	
			$('#back-top').css("display","none");
		}
	}		
	$(window).on("scroll", function(){
			checkBackTop();			
	});
	$(window).on("resize", function(){
			checkBackTop();
	});
	
	
	

   

	
	
});