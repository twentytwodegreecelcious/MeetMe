/**
 * Created by User on 24.09.2016.
 */

$(function(){
    $('.user').on('click', function(){
        $('.right').slideToggle();
    });
});



var init = function() {
    isLogged();
}

var logout = function() {
    $.post(
        "/logout",
        [],
        {}
    )
}

//$(document).ready(function(){
//    $('#registration').on('click', $.post("${pageContext.servletContext.registration", [], function(){}));
//});

//$(document).ready(function () {
//    $.get(
//        ${pageContext.servletContext.contextPath}"/getSession",
//        [],
//        function(response){
//            if (response) {
//                $('.right').setAttribute("display", "none");
//            }
//        }
//    ) ;
//});

function initSideControls() {
    var control_min_width = $('.active-area').width();
    var content_width = $('#page').width(); //����� ������ ���� ������ ������ ����� (���� ������� �� ���������).
    var window_width = $(window).width();
    var $bar_wrap = $('.leftbar-wrap');
    var $bar = $bar_wrap.find('.left-controlbar');
    var $scroll_back = $('#scroll-back');
    var prev_top = parseInt($scroll_back.attr('href').substr(1));

    if (window_width - content_width - (2 * control_min_width) > 0) {
        $bar.show();

        var bar_width = /*(window_width - */content_width/*) / 8*/;

        $bar_wrap.css({width: bar_width});

        if (!prev_top) $scroll_back.hide();

        $bar.off('click').on('click', function(e) {
            e.preventDefault();
            prev_top = $(window).scrollTop();
            $('html, body').animate({scrollTop: 0}, 'normal', function() {
                $scroll_back.attr('href', '#' + prev_top).css({display: 'block', opacity: 0}).animate({opacity: 1}, 'fast');
            });
        });
    }
    else {
        $bar.hide();
    }
}

$(document).ready(function() {
    var $scroll_back = $('#scroll-back');
    var $bar = $('.left-controlbar');

    var threshold = 300; //����� ������ ��������� ������ ��� ����������

    $(window)
        /* �������, ������� ��������� ���������� ������ "�����" � ����������� �� ��������� ����� ��������� */
        .scroll(function() {
            var new_opacity = ($(window).scrollTop() < threshold) ? $(window).scrollTop() / threshold : 1;
            new_opacity ? $bar.show() : $bar.hide();
            $bar.css({opacity: new_opacity});
            var offset = parseInt($scroll_back.attr('href').substr(1));
            if (new_opacity) {
                $scroll_back.hide();
            }
            else {
                if (offset) $scroll_back.css({display: 'block', opacity: 0}).animate({opacity: 1}, 'fast');
            }
        })
        .scroll()
        /* ��������� ������� ��������� �������� ���� �������� � ������� ������������� ������ */
        .resize(initSideControls)
        .resize();

    /* ������� ��� �������� ������������ �� �����, � �������� �� �������� ����� */
    $scroll_back.click(function(e) {
        e.preventDefault();
        $('html, body').animate({scrollTop: $(this).attr('href').substr(1)}, 'normal');
        $(this).attr('href', '#0').hide();
    });
});