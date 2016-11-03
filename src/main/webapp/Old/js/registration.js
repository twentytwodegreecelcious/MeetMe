/**
 * Created by User on 30.09.2016.
 */

$(document).ready(function() {
    $('.further').on('click', function() {
      var currentRegistrationPage = document.getElementsByClassName('firstPageContent');
       currentRegistrationPage.hide();
        var newRegistrationPage = document.getElementsByClassName('secondPageContent');
        currentRegistrationPage.setAttribute('style', "display: none !important");
        newRegistrationPage.setAttribute('style', 'display: block !;')
    });
});

$(document).ready(function() {
    $('.back').on('click', function() {
        var currentRegistrationPage = document.getElementsByClassName('secondPageContent');
        currentRegistrationPage.hide();
        var newRegistrationPage = document.getElementsByClassName('firstPageContent');
        currentRegistrationPage.setAttribute('style', "display: none !important");
        newRegistrationPage.setAttribute('style', 'display: block !important;')
    });
});

$(document).ready(function() {
    var option1 = document.getElementsByClassName('firstPageContent');
    var option2 = document.getElementsByClassName('secondPageContent');
    if (option1.isShown()) {
        option2.setAttribute('style', 'display: none !important;');
        option1.setAttribute('style', 'display: none !important;');
    }
    else {
        option1.setAttribute('style', 'display: none !important;');
        option2.setAttribute('style', 'display: none !important;');
    }
});


(function (){
   $('.back').on('click', function () {
     var element = document.getElementById('page');
       element.innerHTML("pages/register.jsp");
   });
});