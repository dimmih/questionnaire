// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require popper
//= require activestorage
//= require turbolinks
//= require bootstrap.min
//= require toastr
//= require cocoon
//= require_tree .

// Toastr options
$(document).on('turbolinks:load', function() {
  toastr.options = {
    "closeButton": true,
    "debug": false,
    "positionClass": "toast-top-right",
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }

  $("#question_kind").change(function(){
    var kind = $("#question_kind option:selected").val();
    if (kind == 'multiple_choice') {
      $('.multiple-choice-answers').show();
      $('.open-question-answer').hide();
    } else if(kind == 'open_question') {
      $('.multiple-choice-answers').hide();
      $('.open-question-answer').show();
    }
  });
});
