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
//= require activestorage
//= require turbolinks
//= require_tree .

console.log('Welcome!');


$(document).on('turbolinks:load', function() {
    placeAds();
});

function placeAds() {
    var dogs = $('#main .dog-item');
    var adHtml = '<a href="https://www.barkbox.com" target="_blank">' + 
        '<article class="col-sm-auto dog-item">' +
        '<img class="ad-photo" src="/images/ad.jpg">' + 
        '</article>' + 
        '</a>';

    var i = 1;
    $.each(dogs, function(i, dogItem) {
        if(i % 2 === 1) {
            $(dogItem).parent().after(adHtml);
        }
        i++;
    });
}