/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$('.dropdown-toggle').on('click', function(e) {
  e.stopPropagation();
  e.preventDefault();

  var self = $(this);
  if(self.is('.disabled, :disabled')) {
    return false;
  }
  self.parent().toggleClass("open");
});

$(document).on('click', function(e) {
  if($('.dropdown').hasClass('open')) {
    $('.dropdown').removeClass('open');
  }
});

$('.nav-btn.nav-slider').on('click', function() {
  $('.overlay').show();
  $('nav').toggleClass("open");
});

$('.overlay').on('click', function() {
  if($('nav').hasClass('open')) {
    $('nav').removeClass('open');
  }
  $(this).hide();
});