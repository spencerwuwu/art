
$(document).ready(function(){

  //set intro height
  var w = $(window).width();
  if ( w >= 550 ){
    var h = w/7*3
  }
  else{
    var h = w/7*4.5
  }

  if ( w >= 768 ){
    var h2 = w/7*2.3
    var nh = h2/7*3
  }
  else if ( w >= 550 ){
    var h2 = w/7*3.5
    var nh = h2/5*3
  }
  else{
    var h2 = w/7*4.5
    var nh = h2/5*3
  }


    $("#intro").css("height", h);
  $(".intro-img-con").css("height", h);
  $(".cover").css("top", h);

  $("#about-intro").css("height", h2);
  $("#about-intro-img-con").css("height", h2);

  $("#about-island").css("top", nh);

   var shoph = w/16*9*0.8+60;
    $("#shop-intro").css("height", shoph);
  //menubtn functions
  $("#menubtn").on('click', function(e){
    e.preventDefault();
    $("#menublack").fadeIn("fast");

  });
  $("#menublack").on('click', function(e){
    e.preventDefault();
    $("#menublack").fadeOut("fast");

  });


  $.each([ 1, 2, 3, 4, 5, 6, 7], function( index, i ){	
    var name = "#list" + i;
    var name2 = "#list"+i+">.list_box_content";
    var name3 = "#list"+i+">.list_box_img";
    var nameJump = "#listJ-item" + i;
    $( nameJump ).css("display","none");

    $( name  ).hover(function(){
      $( name2 ).css("opacity",  1);
      $( name3 ).addClass("vfilter");
      $( name3).removeClass("list_box_img_w");
      $( name3 ).addClass("list_box_img_n");
    }, function(){
      $( name2 ).css("opacity",  0);
      $( name3 ).removeClass("vfilter");
      $( name3 ).addClass("list_box_img_w");
      $( name3 ).removeClass("list_box_img_n");
    });

  });

  $.each([ 1, 2, 3, 4, 5, 6, 7], function( index, i ){	
    var name = "#list" + i;
    var nameJump = "#listJ-item" + i;

    $( name  ).click(function(){
      $( nameJump ).fadeIn();
    });

  });

  $(".listJ-bottom").click(function(){
    $.each([ 1, 2, 3, 4, 5, 6, 7], function( index, i ){	
      var Target = "#listJ-item" + i;

      $( Target ).fadeOut();

    });
  });

  var windowH = $(window).height();
  $(".list-content").css("height", windowH * 0.8);
  $(".list-content").css("margin-top", windowH * 0.1);

});


$(window).resize(function(){
  var w = $(window).width();
  if ( w >= 550 ){
    var h = w/7*3
  }
  else{
    var h = w/7*4.5
  }

  if ( w >= 768 ){
    var h2 = w/7*2.3
      var nh = h2/7*3
  }
  else if ( w >= 550 ){
    var h2 = w/7*3.5
      var nh = h2/5*3
  }
  else{
    var h2 = w/7*4.5
      var nh = h2/5*3
  }

  $("#intro").css("height", h);
  $(".intro-img-con").css("height", h);
  $(".cover").css("top", h);
  $("#about-intro").css("height", h2);
  $("#about-intro-img-con").css("height", h2);
  $("#about-island").css("top", nh);
  var shoph = w/16*9*0.8+60;
  $("#shop-intro").css("height", shoph);

  var windowH = $(window).height();
  $(".list-content").css("height", windowH * 0.8);
  $(".list-content").css("margin-top", windowH * 0.1);

});

