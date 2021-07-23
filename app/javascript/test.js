$(function() {
  console.log("aaaaaaa");
  $("p").hide();
  $('html, body').animate({
    scrollTop: 0
  }, 'slow');

  $('li').click(function(){
    $(this).css('color', 'red');
  });
});
