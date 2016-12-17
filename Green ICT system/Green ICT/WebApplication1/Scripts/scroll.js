
        $(document).ready(function () {
            $('button').click(function () {
                $('.cir').show();
            });

        });
$(document).scroll(function () {
    var y = $(this).scrollTop();
    if (y > 300) {
        $('.about').fadeIn(1000);
              
    }
    if (y > 850) {
        $('.app').fadeIn(1000);
    }
    if (y > 900) {
        $('.menu').fadeIn(1000);
    }

});
$(document).on('click', 'a[href^="#"]', function (e) {
    // target element id
    var id = $(this).attr('href');

    // target element
    var $id = $(id);
    if ($id.length === 0) {
        return;
    }

    // prevent standard hash navigation (avoid blinking in IE)
    e.preventDefault();

    // top position relative to the document
    var pos = $(id).offset().top;

    // animated top scrolling
    $('body, html').animate({ scrollTop: pos });
});
var num = 50; //number of pixels before modifying styles

$(window).bind('scroll', function () {
    if ($(window).scrollTop() > num) {
        $('.menu').addClass('fixed');
    } else {
        $('.menu').removeClass('fixed');
    }
});
function getScrollXY() {
    var x = 0, y = 0;
    if (typeof (window.pageYOffset) == 'number') {
        // Netscape
        x = window.pageXOffset;
        y = window.pageYOffset;
    } else if (document.body && (document.body.scrollLeft || document.body.scrollTop)) {
        // DOM
        x = document.body.scrollLeft;
        y = document.body.scrollTop;
    } else if (document.documentElement && (document.documentElement.scrollLeft || document.documentElement.scrollTop)) {
        // IE6 standards compliant mode
        x = document.documentElement.scrollLeft;
        y = document.documentElement.scrollTop;
    }
    return [x, y];
}

function setScrollXY(x, y) {
    window.scrollTo(x, y);
}
function createCookie(name, value, days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        var expires = "; expires=" + date.toGMTString();
    }
    else var expires = "";
    document.cookie = name + "=" + value + expires + "; path=/";
}

function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}
function loadP(pageref) {
    x = readCookie(pageref + 'x');
    y = readCookie(pageref + 'y');
    setScrollXY(x, y)
}
function unloadP(pageref) {
    s = getScrollXY()
    createCookie(pageref + 'x', s[0], 0.1);
    createCookie(pageref + 'y', s[1], 0.1);
}
//function isNumber(evt) {
//    var theEvent = evt || window.event;
//    var key = theEvent.keyCode || theEvent.which;
//    key = String.fromCharCode(key);
//    if (key.length == 0) return;
//    var regex = /^[0-9,\b]+$/;
//    if (!regex.test(key)) {
//        theEvent.returnValue = false;
//        if (theEvent.preventDefault) theEvent.preventDefault();
//    }
//}
        
