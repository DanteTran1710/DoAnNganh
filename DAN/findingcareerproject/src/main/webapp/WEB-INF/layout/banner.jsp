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
    <!-- Slide 1 -->
    <div class="carousel-item active">
        <div class="carousel-background"><img src="<c:url value="/slide/slide-1.jpg"/>" alt=""></div>
        <div class="carousel-container">
            <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">WELCOME TO<br><span>FINDING JOB</span></h2>
                <p class="animate__animated animate__fadeInUp">SPEEDY - SUITABLE - EXACTLY</p>
                <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">BEGIN</a>
            </div>
        </div>
    </div>
</section>