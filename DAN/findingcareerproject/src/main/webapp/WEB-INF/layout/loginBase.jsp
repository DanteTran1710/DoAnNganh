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
        <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="<c:url value="/vendor/bootstrap/css/bootstrap-theme.css" />" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="<c:url value="/css/elegant-icons-style.css" />" rel="stylesheet" />
        <link href="<c:url value="/css/font-awesome.css" />" rel="stylesheet" />
        <!-- Custom styles -->
        <link href="<c:url value="/css/style.login.css" />" rel="stylesheet">
        <link href="<c:url value="/css/style-responsive.css" />" rel="stylesheet" />
    </head>
    <body>
        <div>       
            <!-- Content -->
            <tiles:insertAttribute name="content"/>
        </div>
    </body>
</html>
