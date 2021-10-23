/**
 * Template Name: Shuffle - v2.3.1
 * Template URL: https://bootstrapmade.com/bootstrap-3-one-page-template-free-shuffle/
 * Author: BootstrapMade.com
 * License: https://bootstrapmade.com/license/
 */

// HOME PAGE

!(function ($) {
    "use strict";

    // Stick the header at top on scroll
    $("#header").sticky({
        topSpacing: 0,
        zIndex: '50'
    });

    // Test fixed - scroll menu header


    // Smooth scroll for the navigation menu and links with .scrollto classes
    var scrolltoOffset = $('#header').outerHeight() - 1;
    $(document).on('click', '.nav-menu a, .mobile-nav a, .scrollto', function (e) {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var target = $(this.hash);
            if (target.length) {
                e.preventDefault();

                var scrollto = target.offset().top - scrolltoOffset;

                if ($(this).attr("href") == '#header') {
                    scrollto = 0;
                }

                $('html, body').animate({
                    scrollTop: scrollto
                }, 1500, 'easeInOutExpo');

                if ($(this).parents('.nav-menu, .mobile-nav').length) {
                    $('.nav-menu .active, .mobile-nav .active').removeClass('active');
                    $(this).closest('li').addClass('active');
                }

                if ($('body').hasClass('mobile-nav-active')) {
                    $('body').removeClass('mobile-nav-active');
                    $('.mobile-nav-toggle i').toggleClass('icofont-navigation-menu icofont-close');
                    $('.mobile-nav-overly').fadeOut();
                }
                return false;
            }
        }
    });

    // Activate smooth scroll on page load with hash links in the url
    $(document).ready(function () {
        if (window.location.hash) {
            var initial_nav = window.location.hash;
            if ($(initial_nav).length) {
                var scrollto = $(initial_nav).offset().top - scrolltoOffset;
                $('html, body').animate({
                    scrollTop: scrollto
                }, 1500, 'easeInOutExpo');
            }
        }
    });

    // Mobile Navigation
    if ($('.nav-menu').length) {
        var $mobile_nav = $('.nav-menu').clone().prop({
            class: 'mobile-nav d-lg-none'
        });
        $('body').append($mobile_nav);
        $('body').prepend('<button type="button" class="mobile-nav-toggle d-lg-none"><i class="icofont-navigation-menu"></i></button>');
        $('body').append('<div class="mobile-nav-overly"></div>');

        $(document).on('click', '.mobile-nav-toggle', function (e) {
            $('body').toggleClass('mobile-nav-active');
            $('.mobile-nav-toggle i').toggleClass('icofont-navigation-menu icofont-close');
            $('.mobile-nav-overly').toggle();
        });

        $(document).on('click', '.mobile-nav .drop-down > a', function (e) {
            e.preventDefault();
            $(this).next().slideToggle(300);
            $(this).parent().toggleClass('active');
        });

        $(document).click(function (e) {
            var container = $(".mobile-nav, .mobile-nav-toggle");
            if (!container.is(e.target) && container.has(e.target).length === 0) {
                if ($('body').hasClass('mobile-nav-active')) {
                    $('body').removeClass('mobile-nav-active');
                    $('.mobile-nav-toggle i').toggleClass('icofont-navigation-menu icofont-close');
                    $('.mobile-nav-overly').fadeOut();
                }
            }
        });
    } else if ($(".mobile-nav, .mobile-nav-toggle").length) {
        $(".mobile-nav, .mobile-nav-toggle").hide();
    }

    // Navigation active state on scroll
    var nav_sections = $('section');
    var main_nav = $('.nav-menu, .mobile-nav');

    $(window).on('scroll', function () {
        var cur_pos = $(this).scrollTop() + 200;

        nav_sections.each(function () {
            var top = $(this).offset().top,
                    bottom = top + $(this).outerHeight();

            if (cur_pos >= top && cur_pos <= bottom) {
                if (cur_pos <= bottom) {
                    main_nav.find('li').removeClass('active');
                }
                main_nav.find('a[href="#' + $(this).attr('id') + '"]').parent('li').addClass('active');
            }
            if (cur_pos < 300) {
                $(".nav-menu ul:first li:first").addClass('active');
            }
        });
    });

    // Intro carousel
    var heroCarousel = $("#heroCarousel");
    var heroCarouselIndicators = $("#hero-carousel-indicators");
    heroCarousel.find(".carousel-inner").children(".carousel-item").each(function (index) {
        (index === 0) ?
                heroCarouselIndicators.append("<li data-target='#heroCarousel' data-slide-to='" + index + "' class='active'></li>") :
                heroCarouselIndicators.append("<li data-target='#heroCarousel' data-slide-to='" + index + "'></li>");

        $(this).css("background-image", "url('" + $(this).children('.carousel-background').children('img').attr('src') + "')");
        $(this).children('.carousel-background').remove();
    });

    heroCarousel.on('slid.bs.carousel', function (e) {
        $(this).find('h2').addClass('animate__animated animate__fadeInDown');
        $(this).find('p, .btn-get-started').addClass('animate__animated animate__fadeInUp');
    });

    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });

    $('.back-to-top').click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 1500, 'easeInOutExpo');
        return false;
    });

    // Skills section
    $('.skills-content').waypoint(function () {
        $('.progress .progress-bar').each(function () {
            $(this).css("width", $(this).attr("aria-valuenow") + '%');
        });
    }, {
        offset: '80%'
    });

    // jQuery counterUp
    $('[data-toggle="counter-up"]').counterUp({
        delay: 10,
        time: 1000
    });

    // Porfolio isotope and filter
    $(window).on('load', function () {
        var portfolioIsotope = $('.portfolio-container').isotope({
            itemSelector: '.portfolio-item',
            layoutMode: 'fitRows'
        });

        $('#portfolio-flters li').on('click', function () {
            $("#portfolio-flters li").removeClass('filter-active');
            $(this).addClass('filter-active');

            portfolioIsotope.isotope({
                filter: $(this).data('filter')
            });
        });

        // Initiate venobox (lightbox feature used in portofilo)
        $(document).ready(function () {
            $('.venobox').venobox();
        });
    });

    // Portfolio details carousel
    $(".portfolio-details-carousel").owlCarousel({
        autoplay: true,
        dots: true,
        loop: true,
        items: 1
    });

})(jQuery);

// COMPANY DETAILS
function addComment(employerId) {
    fetch("/findingcareerproject/api/add-comment", {
        method: 'post',
        body: JSON.stringify({
            "content": document.getElementById("cmtId").value,
            "employerId": employerId
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        console.info(res);

        return res.json();
    }).then(function (data) {
        console.info(data);

        let area = document.getElementById("cmt-area");

        area.innerHTML = `  
                  <div class="comment-section">
                    <img src="${data.employee.avatarUrl}"/>
                    <div>
                        <label class="job-tit">${data.content}</label>
                        <p class="date-comment">${moment(data.createDate).fromNow()}</p>
                    </div>
                </div>` + area.innerHTML;
        location.reload();
    })
}

// RECRUITMENTS BY COMPANY

function deleteRecruitment(recruitmentid) {
    if (confirm("Do you want to delete this recruitment?") == true) {
        fetch(`/findingcareerproject/api/delete-recruitment/${recruitmentid}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                location.reload();
            } else
                alert("Error!!");
        })
    }
}

function getRecruitments(employerId) {
    event.preventDefault();

    fetch("/findingcareerproject/api/get-amount-res", {
        method: 'post',
        body: JSON.stringify({
            "id": employerId,
            "amount": document.getElementsByClassName("jobbyc").length
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        console.info(res);

        return res.json();
    }).then(function (data) {
        console.info(data);

        let area = document.getElementById("job-section");

        for (i = 0; i < data.length; i++) {
            area.innerHTML += `  
                   <div class="jobbyc col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                            <div class="icon-box">
                                <div class="box2">
                                    <h4 class="title"><a href="${data[i].idRecruitment}">${data[i].title}</a></h4>
                                </div>
                            </div>
                        </div>`;
        }
    })
}
////HOVER ON FULL STAR

$(document).on('mouseenter', '.starr', function () {
    var index = $(this).data("index");

    for (i = 1; i <= index; i++) {
        $('#star-' + i).css('color', '#ffcc00');

    }
})
////LEAVE ON FULL STAR

$(document).on('mouseout', '.starr', function () {
    var index = $(this).data("index");

    for (i = 1; i <= index; i++) {
        $('#star-' + i).css('color', '#ccc');

    }
})

// CLICK TO RATING STAR

$(document).on('click', '.starr', function () {
    fetch("/findingcareerproject/api/rate-star", {
        method: 'post',
        body: JSON.stringify({
            "idEmployer": $(this).data("idcompany"),
            "star": $(this).data("index")
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(res => {
        if (res.status == 200) {
            location.reload();
        } else
            alert("Error!!");
    })
})

// WARNING STAR WAS RATED

$(document).on('click', '.star-rated', function () {
    alert("YOU HAD RATED STAR FOR THIS COMPANY BEFORE!!");
})

// ADD CV TO RECRUITMENT
function addCV(recruitmentid) {
    if (confirm("Do you want to apply your CV for this recruitment?") == true) {
        fetch(`/findingcareerproject/api/add-cv/${recruitmentid}`, {
            method: "get",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                location.reload();
            } else
                alert("Error!!");
        })
    }
}
// ADD LIKE TO RECRUITMENT
function addLike(recruitmentid) {
    fetch(`/findingcareerproject/api/add-like/${recruitmentid}`, {
        method: "get",
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        
        return res.json();
    }).then(function (data) {

        if(data === 1){
            $('#like-section').css('background-color','#87817f');
            $('#like-section').css('color','#000');
        }
        else
            alert("Error!!");
        
    })
}