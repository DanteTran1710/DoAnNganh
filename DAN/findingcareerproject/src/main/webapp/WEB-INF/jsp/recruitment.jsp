<%-- 
    Document   : recruitment
    Created on : Aug 25, 2021, 10:20:48 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<div class="imgcompany">
    picture
</div>
<div class="container jobtitle">
    title
</div>
<div class="container">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#jobinfor">JOB INFO</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#companyinfor">COMPANY INFO</a>
        </li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
        <div id="jobinfor" class="container tab-pane active">
            <div class="jobinfor">
                <div class="wrap-infor ">
                    <div class="offer">offer</div>
                    <div class="mt-2 description">description</div>
                    <div class="mt-2 requirement">requirement</div>
                    <div class="mt-2 address">address</div>
                    <div class="mt-2 hastag">hastag</div>
                </div>
                <div class="wrap-infor">
                    <div class="mt-2 summary">Summary</div>
                </div>
            </div>
        </div>
        <div id="companyinfor" class="container tab-pane fade">
            <div class="companyinfor">
                <div class="wrap-infor">
                    <div class="imgs mt-2">img</div>
                    <div class="infor mt-2">infor</div>
                </div>
                <div class="wrap-infor">
                    <div class="location">locatison</div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="recommend">recommend</div>

