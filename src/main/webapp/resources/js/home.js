//current position
  var pos = 0;
//number of slides
  var totalSlides = $('#slider-wrap ul li').length;
//get the slide width
  var sliderWidth = $('#slider-wrap').width();

  
$(document).ready(function(){
	start();
	window.addEventListener('resize', start);

	/*****************
	  BUILD THE SLIDER
	*****************/

  
	//next slide  
	$('#next').click(function(){
		slideRight();
	});
  
	//previous slide
	$('#previous').click(function(){
		slideLeft();
	});
  
 
  
	/*************************
	  //*> OPTIONAL SETTINGS
	************************/
	//automatic slider
	var autoSlider = setInterval(slideRight, 3500);
  
	//for each slide 
	$.each($('#slider-wrap ul li'), function() { 
		//create a pagination
		var li = document.createElement('li');
		$('#pagination-wrap ul').append(li);    
	});
  
	//counter
	countSlides();
  
	//pagination
	pagination();
  
  
	//hide/show controls/btns when hover
	//pause automatic slide when hover
	$('#slider-wrap').hover(
		function(){ $(this).addClass('active'); clearInterval(autoSlider); },
		function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3500); }
	);
  

 

  


	/***********
	 SLIDE LEFT
	************/
	function slideLeft(){
		pos--;
		if(pos==-1){ pos = totalSlides-1; }

		//*> optional
		countSlides();
		pagination();
		
		start();
	}


	/************
	 SLIDE RIGHT
	*************/
	function slideRight(){
		pos++;
		if(pos==totalSlides){ pos = 0; }
		
		//*> optional 
		countSlides();
		pagination();
		
		start();
	}


	/************************
	 //*> OPTIONAL SETTINGS
	************************/
	function countSlides(){
		$('#counter').html(pos+1 + ' / ' + totalSlides);
	}
	
	function pagination(){
		$('#pagination-wrap ul li').removeClass('active');
		$('#pagination-wrap ul li:eq('+pos+')').addClass('active');
	}

	function start(){
		sliderWidth = $('#slider-wrap').width();
		$('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
		$('#slider-wrap ul#slider li').width(sliderWidth);
		$('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));
	}

});//DOCUMENT READY