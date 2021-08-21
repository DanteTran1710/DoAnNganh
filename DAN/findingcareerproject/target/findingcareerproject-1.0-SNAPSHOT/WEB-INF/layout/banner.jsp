<%-- 
    Document   : banner
    Created on : Aug 16, 2021, 10:49:58 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active">
              <div class="carousel-background"><img src="<c:url value="/slide/slide-1.jpg"/>" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                  <h2 class="animate__animated animate__fadeInDown"><property:message code="contentV.welcome"/><br><span><property:message code="contentV.nameWebsite"/></span></h2>
                  <p class="animate__animated animate__fadeInUp"><property:message code="contentV.slogan"/></p>
                <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto"><property:message code="contentV.start"/></a>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item">
            <div class="carousel-background"><img src="<c:url value="/slide/slide-2.jpg"/>"  alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Lorem Ipsum Dolor</h2>
                <p class="animate__animated animate__fadeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
                <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto"><property:message code="contentV.start"/></a>
              </div>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="carousel-item">
            <div class="carousel-background"><img src="<c:url value="/slide/slide-3.jpg"/>" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Sequi ea ut et est quaerat</h2>
                <p class="animate__animated animate__fadeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
                <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto"><property:message code="contentV.start"/></a>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon icofont-thin-double-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon icofont-thin-double-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section>