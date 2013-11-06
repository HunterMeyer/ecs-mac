$(function() {
  $('.button-link').hover(function() {
    $(this).children().removeClass('icon-white');
  }, function() {
    $(this).children().addClass('icon-white');
  });
});