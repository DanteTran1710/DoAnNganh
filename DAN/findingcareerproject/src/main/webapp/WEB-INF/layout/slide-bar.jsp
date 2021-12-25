<%-- 
    Document   : nav-clps
    Created on : Aug 22, 2021, 10:09:32 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<div class="sidebar" data-color="black">
    <!--
Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

Tip 2: you can also add an image using data-image tag
    -->
    <div class="sidebar-wrapper">
        <div class="logo">
        </div>
        <ul class="nav">
            <li class="nav-item active">
                <a class="nav-link" href="<c:url value="/admin"/>">
                    <i class="fa fa-pie-chart" aria-hidden="true"></i>
                    <p>STATISTIC</p>
                </a>
            </li>
            <li>
                <a class="nav-link" href="<c:url value="/admin/browse"/>">
                    <i class="fa fa-check-square-o" aria-hidden="true"></i>
                    <p>BROWSE EMPLOYER</p>
                </a>
            </li>
        </ul>
    </div>
</div>