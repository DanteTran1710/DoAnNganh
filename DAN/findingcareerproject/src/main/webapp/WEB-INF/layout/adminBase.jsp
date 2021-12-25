<%-- 
    Document   : adminBase
    Created on : Aug 22, 2021, 10:02:18 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <meta content="" name="description">
        <meta content="" name="keywords">
        <title><tiles:insertAttribute name="title"/></title>

        <!-- LOGIN PAGE RESOURCES -->
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
        <!--Icont Font-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- CSS Files -->
        <link href="<c:url value="/css/admin.style.css"/>" rel="stylesheet" />
        <link href="<c:url value="/css/home.style.css" />" rel="stylesheet">
        <link href="<c:url value="/vendor/icofont/icofont.min.css" />" rel="stylesheet">
        <link href="<c:url value="/vendor/bootstrap/admin/css/bootstrap.min.css"/>" rel="stylesheet" />
        <!--<link href="<c:url value="/vendor/bootstrap/admin/css/light-bootstrap-dashboard.css?v=2.0.0 " />" rel="stylesheet" />-->
    </head>
    <body>
        <div class="wrapper">        
            <!-- Slide-Bar -->
            <tiles:insertAttribute name="slide-bar"/>

            <div class="main-panel">
                <!-- Navbar -->
                <tiles:insertAttribute name="navbar"/>    
                <!-- Content -->
                <tiles:insertAttribute name="content"/>
            </div>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"/></script>
    <script src="<c:url value="/vendor/jquery/home/jquery.min.js"/>"/></script>
<script src="<c:url value="/vendor/jquery.easing/jquery.easing.min.js"/>"/></script>
<script src="<c:url value="/vendor/email-form/validate.js"/>"/></script>
<script src="<c:url value="/vendor/jquery-sticky/jquery.sticky.js"/>"/></script>
<script src="<c:url value="/vendor/waypoints/jquery.waypoints.min.js"/>"/></script>
<script src="<c:url value="/vendor/counterup/counterup.min.js"/>"/></script>
<script src="<c:url value="/vendor/isotope-layout/isotope.pkgd.min.js"/>"/></script>
<script src="<c:url value="/vendor/owl.carousel/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/vendor/venobox/venobox.min.js"/>"/></script>
<script src="<c:url value="/js/main.js"/>"/></script>       

</body>
</html>
