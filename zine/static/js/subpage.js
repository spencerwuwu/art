$(document).ready(function(){

  var w = $(window).width();
  var h = $(window).height();

  if ( w >= h ){
    $('#bkg-img-w').css("display", "block");
    $('#bkg-img-n').css("display", "none");
	  if ( h/w >= 2304/4096 ){ 
      	$('#bkg-id').removeClass("bkg");
      	$('#bkg-id').addClass("bkg-w");
	  }
	  else{
      	$('#bkg-id').addClass("bkg");
      	$('#bkg-id').removeClass("bkg-w");
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
	  }
	  else{
      	$('#bkg-id').addClass("bkg");
      	$('#bkg-id').removeClass("bkg-w");
	  }
  }
  else {
    $('#bkg-img-w').css("display", "none");
    $('#bkg-img-n').css("display", "block");
    $('#bkg-id').addClass("bkg");
    $('#bkg-id').removeClass("bkg-w");
  }




});
