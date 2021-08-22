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
        <link href="<c:url value="/vendor/bootstrap/admin/css/bootstrap.min.css"/>" rel="stylesheet" />
        <link href="<c:url value="/vendor/bootstrap/admin/css/light-bootstrap-dashboard.css?v=2.0.0 " />" rel="stylesheet" />
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

        <!-- Core JS Files -->
        <script src="<c:url value="/vendor/jquery/jquery.3.2.1.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/vendor/jquery/admin/popper.min.js" />"type="text/javascript"></script>
        <script src="<c:url value="/vendor/bootstrap/admin/js/bootstrap.min.js" />" type="text/javascript"></script>
        <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
        <script src="<c:url value="/vendor/bootstrap/js/bootstrap-switch.js" />"></script>
        <!--  Google Maps Plugin    -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <!--  Chartist Plugin  -->
        <script src="<c:url value="/vendor/jquery/admin/chartist.min.js" />"></script>
        <!--  Notifications Plugin    -->
        <script src="<c:url value="/vendor/bootstrap/js/bootstrap-notify.js" />"></script>
        <!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
        <script src="<c:url value="/vendor/jquery/light-bootstrap-dashboard.js" />" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                // Javascript method's body can be found in assets/js/demos.js
                demo.initDashboardPageCharts();

                demo.showNotification();

            });
        </script>
    </body>
</html>
