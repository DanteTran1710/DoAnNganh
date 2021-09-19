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
    <div>${re.title}</div>
</div>
<div class="container">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#jobinfor">JOB INFOR</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#companyinfor">COMPANY INFO</a>
        </li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
        <div id="jobinfor" class="container tab-pane active">
            <div class="jobinfor">
                <div class="wrap-infor " id="description">
                    <div class="section">
                        <label>WHAT WE CAN OFFER</label>
                        <div class="offer">${re.welfare}</div>
                    </div>
                    <div class="section">
                        <label>JOB DESCRIPTION</label>
                        <div class="mt-2 description">${re.description}</div>
                    </div>
                    <div class="section">
                        <label>JOB REQUIREMENTS</label>
                        <div class="mt-2 requirement">${re.requirement}</div>
                    </div>
                    <div class="section">
                        <label>JOB LOCATIONS</label>
                        <div class="mt-2 address">address</div>
                    </div>
                    <div class="section">
                        <label>TAGS</label>
                        <div class="mt-2 hastag">${re.hastag}</div>
                    </div>
                </div>
                <div class="wrap-infor" id="summary">
                    <div class="mt-2 summary">
                        <div class="section">
                            
                        <label>JOB LEVEL</label>
                        <div class="mt-2 description">${re.position}</div>
                        </div>
                        <div class="section">
                             <label>SKILL</label>
                        <div class="mt-2 description">${re.experience}</div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
        <div id="companyinfor" class="container tab-pane fade">
            <div class="companyinfor">
                <div class="wrap-infor" id="description">
                    <div class="section">
                                            <div class="imgs mt-2">img</div>
                    <div class="infor mt-2">${co.orientation}</div>
                    </div>
                </div>
                <div class="wrap-infor">
                    <div class="location">
                        <div class="section">
                            <label>LOCATION</label>
                        <div class="mt-2 description">${co.address}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="recommend">recommend</div>

