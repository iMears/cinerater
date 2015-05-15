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
//= require twitter/bootstrap
//= require jquery-tablesorter
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $.ajax('movies.json', {
    success: function(response) {
      var movies = []
      console.log(response)
      for (var key in response) {
        movies.push("<tr>" +
          "<td>" + response[key]['movieName'] + "</td>" +
          "<td>" + response[key]['releaseyear'] + "</td>" +
          "<td>" + response[key]['genre'] + "</td>"
          + "</tr>");
      };

      for (var i = 0; i < movies.length; i++) {
        $('tbody').append(movies[i])
      };
      $("#myTable").tablesorter();
    }
  });
});
