// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.mobile
//= require handlebars.runtime
//= require_tree ./templates
//= require turbolinks
//= require_tree .
$(document).on('pageinit', function() {


   $('.alert').delay(500).fadeIn('normal', function() {
      $(this).delay(1500).fadeOut();
   });

$("#friends").click(function(e){
	e.preventDefault();


	$.ajax({
	  type: 'get',
	  url: '/users',
	  dataType: 'json',
	  data: {user:{name: name}}
	}).done(function(res) {
		console.log(res);
	  if (res.errors) {
	    $(createErrors(res.errors)).appendTo("#attach").hide().slideDown(500);
	  } else {

	  	console.log('success!');
	    $("#swap").empty();
	    $(HandlebarsTemplates['friends/friends'](res))

	      .appendTo('#swap')
	      .hide()
	      .slideDown(500);
	  
	  }
	});
});

$("#account").click(function(e){
	e.preventDefault();
	$.ajax({
	  type: 'get',
	  url: '/users/'+$(this).data('id'),
	  dataType: 'json',
	}).done(function(res) {
		console.log(res);
	  if (res.errors) {
	    $(createErrors(res.errors)).appendTo("#attach").hide().slideDown(500);
	  } else {
	  	console.log('success!');
	    $("#swap").empty();
	    $(HandlebarsTemplates['accounts/account'](res))
	      .appendTo('#swap')
	      .hide()
	      .slideDown(500);

	  
	  }
	});
});

$("#attending").click(function(e){
	e.preventDefault();

	$.ajax({
	  type: 'get',
	  url: '/users/'+$(this).data('id'),
	  dataType: 'json',
	}).done(function(res) {
		console.log(res);
	  if (res.errors) {
	    $(createErrors(res.errors)).appendTo("#attach").hide().slideDown(500);
	  } else {
	  	console.log('success!');
	    $("#swap").empty();

	    $(HandlebarsTemplates['attending/attending'](res))
	      .appendTo('#swap')
	      .hide()
	      .slideDown(500);
	  }
	});
});





});



