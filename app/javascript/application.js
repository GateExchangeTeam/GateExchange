// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "trix"
import "@rails/actiontext"
import "trix-editor-overrides"
import LocalTime from "local-time"
import Rails from '@rails/ujs';

Rails.start();
LocalTime.start()

$(function() {
    setTimeout(function(){
        $('.flash-messages').slideUp(500); // Remove flash messages after a second
    }, 1000);
});