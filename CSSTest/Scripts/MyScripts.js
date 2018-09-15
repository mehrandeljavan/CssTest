/// <reference path="jQuery.js" />
$(document).ready(function () {
    var searchBox = document.getElementById('TextBox1');/*$('#<%=TextBox1.ClientID%>');*/
    console.log(searchBox);
    searchBox.title = "aaaaa";
    searchBox.focus(function () {
        console.log(searchBox.val());
        if (searchBox.val() == searchBox.title) {
            console.log(searchBox.title);
        
            searchBox.removeClass("defaultText");
            searchBox.addClass("defaultTextFocus");
            searchBox.val("");
        }
    });

    searchBox.blur(function () {
        if (searchBox.val() == "") {
            searchBox.removeClass("defaultTextFocus");
            searchBox.addClass("defaultText");
            searchBox.val(searchBox.title);
        }
    });

    searchBox.blur();
})