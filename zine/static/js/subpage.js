$(document).ready(function(){

  var w = $(window).width();
  var h = $(window).height();

  if ( w >= h ){
    $('#bkg-img-n').css("display", "none");
	  if ( h/w >= 2304/4096 ){ 
    $('#bkg-img-w2').css("display", "block");
    $('#bkg-img-w1').css("display", "none");
	  }
	  else{
    $('#bkg-img-w2').css("display", "none");
    $('#bkg-img-w1').css("display", "block");
	  }
  }
  else {
    $('#bkg-img-w1').css("display", "none");
    $('#bkg-img-w2').css("display", "none");
    $('#bkg-img-n').css("display", "block");
  }


});



$(window).resize(function(){


  var w = $(window).width();
  var h = $(window).height();

  if ( w >= h ){
    $('#bkg-img-n').css("display", "none");
	  if ( h/w >= 2304/4096 ){ 
    $('#bkg-img-w2').css("display", "block");
    $('#bkg-img-w1').css("display", "none");
	  }
	  else{
    $('#bkg-img-w2').css("display", "none");
    $('#bkg-img-w1').css("display", "block");
	  }
  }
  else {
    $('#bkg-img-w1').css("display", "none");
    $('#bkg-img-w2').css("display", "none");
    $('#bkg-img-n').css("display", "block");
  }




});
