<%-- 
    Document   : welcome
    Created on : Aug 1, 2021, 4:46:30 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<!-- Start main -->
<main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
        <div class="container">
            <div class="section-title">
                <h2>About Us</h2>
                <p>
                    Finding Job is a job search engine launched in 2021 to assist candidates in finding ideal jobs and employers find suitable candidates.
                    Millions of people all over the world are looking for jobs relevant to their skill and interest.
                </p>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <img src="<c:url value="/img/about.jpg" />" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                    <h3>Got talent&nbsp;<strong>Meet Opportunity</strong></h3>
                    <p>
                        Moreover, many of the employers can't find qualified candidates for their open jobs.
                        Hence, Finding Job aims to empower employment across the globe through one single platform making job search easier. 
                        It contains the database of millions of job listings and recruitments.
                    </p>
                    <p>
                        At Finding Job, we feel proud making mutually favorable matches between employers and job seekers.
                        We make sure that each fulfills the requirements and expectation of each other. 
                    </p>
                    <p>
                        Let us help you build your career.
                        We can achieve the goal of bridging the gap between job seekers & employers by deeply understanding the needs of our corporate clients and then using exclusive strategies to find the most appropriate job candidates.
                    </p>
                </div>
            </div>

        </div>
    </section><!-- End About Us Section -->

    <!-- ======= Counts Section ======= -->
    <section class="counts section-bg">
        <div class="container">

            <div class="row no-gutters" style="justify-content: space-between">

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="icofont-ui-search"></i>
                        <span data-toggle="counter-up">100</span>
                        <p><strong>100+ job boards</strong><br>
                            We search for new jobs daily from all leading job boards to bring you the best opportunities in your industry.
                        </p>
                        <a href="<c:url value="/jobs" />">Find out more &raquo;</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="icofont-settings-alt"></i>
                        <span data-toggle="counter-up">521</span>
                        <p><strong>Filtered results</strong><br>
                            Job results are filtered as per your requirement by our search algorithm, making sure you get the most relevant results.  
                        </p>
                        <a href="<c:url value="/jobs" />">Find out more &raquo;</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                    <div class="count-box">
                        <i class="icofont-alarm"></i>
                        <span data-toggle="counter-up">1,463</span>
                        <p><strong>Free job alerts</strong><br> 
                            Subscribe to your desired job categories and we make sure the latest opportunities are sent to your inbox every week.
                        </p>
                        <a href="<c:url value="/jobs" />">Find out more &raquo;</a>
                    </div>
                </div>
            </div>

        </div>
    </section><!-- End Counts Section -->

    <!-- ======= Our Services Section ======= -->
    <section id="services" class="services">
        <div class="container">
            <div class="section-title">
                <h2>Our Potential Partners</h2>
            </div>
            <div class="row">
                <c:forEach var="c" items="${favCom}" begin="1" end="4">
                    <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                        <div class="icon-box">
                            <div class="img-com-section mb-3"><img src="${c[5]}"/></div>
                            <h4 class="title">
                                <a href="<c:url value="/employee/employer-details/${c[0]}"/>">${c[1]}</a>
                            </h4>
                            <p class="description">
                                <i class="fa fa-quote-left" aria-hidden="true"></i>&nbsp;&nbsp;${c[6]}
                            </p>
                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>
    </section><!-- End Our Services Section -->

    <!-- ======= Cta Section ======= -->
    <section class="cta">
        <div class="container">

            <div class="text-center">
                <h3>OUR ORIENTATION</h3>
                <p>
                    Finding Job provides recruitment capabilities by identifying top level talent for employers looking for enthusiastic professionals globally.
                </p>
                <a class="cta-btn" href="<c:url value="/jobs" />">More Information</a>
            </div>

        </div>
    </section><!-- End Cta Section -->

    <!-- ======= Our Services Section ======= -->
    <section id="services" class="services">
        <div class="container">
            <div class="section-title">
                <h2>New recruitment you might interest</h2>
                <div class="row">
                    <c:forEach var="r" items="${re}" begin="1" end="4">
                        <div id="re" class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                            <div class="icon-box">
                                <h4 class="title">
                                    <a href="<c:url value="/recruitment/${r[0]}"/>">${r[1]}</a>
                                </h4>
                                <p class="description">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;${r[7]}
                                </p>
                                <p class="description">
                                    <i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;${r[9]}
                                </p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
    </section><!-- End Our Services Section -->

</main>
<!-- End #main -->
