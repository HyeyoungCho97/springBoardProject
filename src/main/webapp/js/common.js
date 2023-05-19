$(function() {
    // 메뉴
    $('.depth1 > li').mouseover(function() {
        $(this).find('.depth2').stop().slideDown();
    }).mouseleave(function() {
        $(this).find('.depth2').stop().slideUp();
    });

    $(".logo").click(function() {
        location.href='index.html';
    });
});