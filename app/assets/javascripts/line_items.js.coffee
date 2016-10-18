# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#$(document).on "ready page:change", -> $('.store .delete_img > img').click -> $(this).html("<%= escape_javascript link_to ('Delete', 'line_items_path', 'method: :delete') %>");