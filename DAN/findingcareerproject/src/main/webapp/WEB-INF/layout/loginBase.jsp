<%-- 
    Document   : loginBase
    Created on : Aug 21, 2021, 8:31:09 PM
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
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- LOGIN PAGE RESOURCES -->
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="<c:url value="/vendor/bootstrap/login/css/bootstrap.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/vendor/animate/animate.login.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/vendor/css-hamburgers/hamburgers.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/vendor/select2/select2.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/util.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/login.style.css"/>">
        <!--Icont Font-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <div>       
            <!-- Content -->
            <tiles:insertAttribute name="content"/>
        </div>

        <!-- LOGIN PAGE RESOURCES -->
        <script src="<c:url value="/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
        <script src="<c:url value="/vendor/bootstrap/login/js/popper.js"/>"></script>
        <script src="<c:url value="/vendor/bootstrap/login/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/vendor/select2/select2.min.js"/>"></script>
        <script src="<c:url value="/vendor/tilt/tilt.jquery.min.js"/>"></script>
        <script >
            $('.js-tilt').tilt({
                scale: 1.1
            });
        </script>
        <script src="<c:url value="/js/main.login.js"/>"></script>
        <!-- REMOVE TOAST MESSAGE WHEN CLICK ICON CLOSE-->
        <script>
            function removeToast(){
                var main = document.getElementById('toast');
                var child = document.getElementById('toast_main');

                main.removeChild(child);
            }
        </script>
    </body>
</html>
