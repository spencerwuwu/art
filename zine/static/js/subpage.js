$(document).ready(function(){

  var w = $(window).width();
  var h = $(window).height();

  if ( w >= h ){
    $('#bkg-img-w').css("display", "block");
    $('#bkg-img-n').css("display", "none");
	  if ( h/w >= 2304/4096 ){ 
      	$('#bkg-id').removeClass("bkg");
      	$('#bkg-id').addClass("bkg-w");
      	$('#bkg-img-w').addClass("height100");
      	$('#bkg-img-w').removeClass("width100");
	  }
	  else{
      	$('#bkg-id').addClass("bkg");
      	$('#bkg-id').removeClass("bkg-w");
      	$('#bkg-img-w').addClass("width100");
      	$('#bkg-img-w').removeClass("height100");
	  }
  }
  else {
    $('#bkg-img-w').css("display", "none");
    $('#bkg-img-n').css("display", "block");
    $('#bkg-id').addClass("bkg");
    $('#bkg-id').removeClass("bkg-n");
  }


});



$(window).resize(function(){


  var w = $(window).width();
  var h = $(window).height();

  if ( w >= h ){
    $('#bkg-img-w').css("display", "block");
    $('#bkg-img-n').css("display", "none");
	  if ( h/w >= 2304/4096 ){ 
      	$('#bkg-id').removeClass("bkg");
      	$('#bkg-id').addClass("bkg-w");
      	$('#bkg-img-w').addClass("height100");
      	$('#bkg-img-w').removeClass("width100");
	  }
	  else{
      	$('#bkg-id').addClass("bkg");
      	$('#bkg-id').removeClass("bkg-w");
      	$('#bkg-img-w').removeClass("height100");
      	$('#bkg-img-w').addClass("width100");
	  }
  }
  else {
    $('#bkg-img-w').css("display", "none");
    $('#bkg-img-n').css("display", "block");
    $('#bkg-id').addClass("bkg");
    $('#bkg-id').removeClass("bkg-w");
  }




});
