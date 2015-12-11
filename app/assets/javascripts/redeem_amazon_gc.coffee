# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
    $("input[type='submit']").click (e) ->
        e.preventDefault
        retailer = $("#retailer").val()
        if retailer == ""
            alert("Input Retailer fields") 
            return false;
        email = $("#email").val()
        if email == ""
            alert("Please input your Email to signup") 
            return false;
        password = $("#password").val()
        if password == ""
            alert("Please input your password")
            return false;
        zipcode = $("#zip").val()
        if zipcode == ""
            alert("Please input Zip or Postal Code")
            return false;
        phone = $("#phone").val()
        if phone == ""
            alert("Please input your phone number")
            return false;
