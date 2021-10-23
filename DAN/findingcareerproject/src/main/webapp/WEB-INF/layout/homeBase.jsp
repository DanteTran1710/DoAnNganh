<%-- 
    Document   : base
    Created on : Aug 16, 2021, 9:58:18 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <meta content="" name="description">
        <meta content="" name="keywords">
        
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
        <!-- HOME PAGE RESOURCES -->
        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
        <!-- CSS Files -->
        <link href="<c:url value="/vendor/bootstrap/home/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="/vendor/icofont/icofont.min.css" />" rel="stylesheet">
        <link href="<c:url value="/vendor/animate/css/animate.min.css" />" rel="stylesheet">
        <link href="<c:url value="/vendor/assets/owl.carousel.min.css" />" rel="stylesheet"> 
        <link href="<c:url value="/vendor/venobox/venobox.css"/>" rel="stylesheet">
        <link href="<c:url value="/css/home.style.css" />" rel="stylesheet">
        <!--Icont Font-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    </head>
    <body>
        <div>
            <!-- Banner -->
            <tiles:insertAttribute name="banner"/>            
            <!-- Header -->
            <tiles:insertAttribute name="header"/>
            <!-- Content -->
            <tiles:insertAttribute name="content"/>
            <!-- Footer -->
            <tiles:insertAttribute name="footer"/>
        
        </div>
        
            
        <!-- HOME PAGE RESOURCES -->    
        <!-- Vendor JS Files -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"/></script>
        <script src="<c:url value="/vendor/jquery/home/jquery.min.js"/>"/></script>
        <script src="<c:url value="/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"/></script>
        <script src="<c:url value="/vendor/jquery.easing/jquery.easing.min.js"/>"/></script>
        <script src="<c:url value="/vendor/email-form/validate.js"/>"/></script>
        <script src="<c:url value="/vendor/jquery-sticky/jquery.sticky.js"/>"/></script>
        <script src="<c:url value="/vendor/waypoints/jquery.waypoints.min.js"/>"/></script>
        <script src="<c:url value="/vendor/counterup/counterup.min.js"/>"/></script>
        <script src="<c:url value="/vendor/isotope-layout/isotope.pkgd.min.js"/>"/></script>
        <script src="<c:url value="/vendor/owl.carousel/owl.carousel.min.js"/>"></script>
        <script src="<c:url value="/vendor/venobox/venobox.min.js"/>"/></script>
          <!-- Template Main JS File -->
        <script src="<c:url value="/js/main.js"/>"/></script>   

    </body>
    
</html>
