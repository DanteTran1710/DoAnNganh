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

<c:if test="${addCvMsg != null}">
    <div id="toast">
        <div id="toast_main">
            <div class="toast_icon">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </div>
            <div class="toast_body">
                <h3 class="toast_title">THÔNG BÁO!</h3>
                <div class="toast_message">${addCvMsg}</div>
            </div>
            <div class="toast_close" onclick="removeToast();">
                <i class="fa fa-times" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</c:if>

<section class="job">
    <div class="container jobtitle">
        <img src="${co.logo}"/>
        <div class="job-title">
            <div class="ti" style="width: 75%">
                <label class="big-title">${re.title}</label>
                <a href="<c:url value="/employee/employer-details/${co.idEmployer}"/>"><h5>${co.companyName}</h5></a>
                <p class="salary">
                    Salary: 
                    <c:if test="${re.salary != 0}">
                        ${re.salary}$
                    </c:if>
                    <c:if test="${re.salary == 0}">
                        Thương lượng
                    </c:if>
                </p>
            </div>
            <div class="button-apply">
                <div class="apply" onclick="addCV(${re.idRecruitment})"><p>APPLY CV</p></div>
                <c:if test="${likebyE == null}">
                    <div id="like-section"
                         class="like" onclick="addReLike(${re.idRecruitment})">
                        <i class="fa fa-heart" aria-hidden="true"></i>&nbsp;LIKE
                    </div>
                </c:if>
                <c:if test="${likebyE != null}">
                    <div id="like-section" style="background-color: #87817f; color: #000"
                         class="like">
                        <i class="fa fa-heart" aria-hidden="true"></i>&nbsp;LIKE
                    </div>
                </c:if>
            </div>
        </div>
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
                            <div class="mt-2 hastag"></div>
                        </div>
                    </div>
                    <div class="wrap-infor" id="summary">
                        <div class="summary">
                            <div class="section">
                                <label>
                                    <i class="fa fa-id-badge" aria-hidden="true"></i>
                                    &nbsp;&nbsp;JOB LEVEL
                                </label>
                                <div class="mt-2 description">${re.position}</div>
                            </div>
                            <div class="section">
                                <label>
                                    <i class="fa fa-flag" aria-hidden="true"></i>
                                    &nbsp;&nbsp;SKILL
                                </label>
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
                            <div class="imgs mt-2">
                                img
                            </div>
                            <div class="section">
                                <label>COMPANY DESCRIPTION</label>
                                <div>${co.description}</div>
                            </div>
                            <div class="section">
                                <label>OUR ORIENTATION</label>
                                <div>${co.orientation}</div>
                            </div>
                        </div>
                    </div>
                    <div class="wrap-infor">
                        <div class="location">
                            <div class="section">
                                <label>
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    &nbsp;&nbsp;LOCATION
                                </label>
                                <div class="mt-2 description">${co.address}</div>
                            </div>
                            <div class="section">
                                <label>
                                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                                    &nbsp;&nbsp;EMAIL
                                </label>
                                <div class="mt-2 description">${co.email}</div>
                            </div>
                            <div class="section">
                                <label>
                                    <i class="fa fa-phone-square" aria-hidden="true"></i>
                                    &nbsp;&nbsp;CONTACT
                                </label>
                                <div class="mt-2 description">${co.phoneNumber}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container recommend"> 
        <label class="big-title">FAVORITE COMPANY</label>
        <div class="row favorite-company">
            <c:forEach var="e" items="${favComs}">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div class="box1">
                            <div class="infor-section">
                                <div class="ti">
                                    <h4 class="title-com">
                                        <a href="<c:url value="/employee/employer-details/${e[0]}"/>">${e[1]}</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="infor-section">
                                <div style="width: 100%">
                                    <p class="email">
                                        <i class="fa fa-envelope-o" aria-hidden="true"></i>&nbsp;
                                        Email: ${e[2]}
                                    </p>
                                    <p class="location-com">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;
                                        Address: ${e[3]}
                                    </p>
                                    <p class="phoneNumber">
                                        <i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;
                                        Contact: ${e[4]}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <label class="big-title pt-2">FAVORITE RECRUITMENT</label>
        <div class="row favorite-recruitment">
            <c:forEach var="r" items="${favRes}">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div class="box1">
                            <div class="infor-section">
                                <div class="ti">
                                    <h4 class="title-com" style="width: 100%; height: 20px">
                                        <a href="<c:url value="/recruitment/${r[0]}"/>">${r[1]}</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="infor-section">
                                <div style="width: 100%">
                                    <p class="salary text text-danger">
                                        <i class="fa fa-money" aria-hidden="true"></i>&nbsp;
                                        Salary: 
                                        <c:if test="${r[2] != 0}">
                                            ${r[2]}$
                                        </c:if>
                                        <c:if test="${r[2] == 0}">
                                            Thương lượng
                                        </c:if>
                                    </p>
                                    <p class="category">
                                        <i class="fa fa-id-badge" aria-hidden="true"></i>&nbsp;
                                        Position: ${r[3]}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <label class="big-title pt-2">SAME MAJOR</label>
        <div class="row same-recruitment">
            <c:forEach var="r" items="${sameCates}">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box">
                        <div class="box1">
                            <div class="infor-section">
                                <div class="ti">
                                    <h4 class="title-com" style="width: 100%; height: 20px">
                                        <a href="<c:url value="/recruitment/${r.idRecruitment}"/>">${r.title}</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="infor-section">
                                <div style="width: 100%">
                                    <p class="salary text text-danger">
                                        <i class="fa fa-money" aria-hidden="true"></i>&nbsp;
                                        Salary: 
                                        <c:if test="${r.salary != 0}">
                                            ${r.salary}$
                                        </c:if>
                                        <c:if test="${r.salary == 0}">
                                            Thương lượng
                                        </c:if>
                                    </p>
                                    <p class="category">
                                        <i class="fa fa-id-badge" aria-hidden="true"></i>&nbsp;
                                        Position: ${r.position}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<script>
    $(document).ready(function () {
        $('.favorite-company').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            prevArrow: '',
            nextArrow: ''
        });
    });

    $(document).ready(function () {
        $('.favorite-recruitment').slick({
            slidesToShow: 2,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            prevArrow: '',
            nextArrow: ''
        });
    });
    $(document).ready(function () {
        $('.same-recruitment').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            prevArrow: '',
            nextArrow: ''
        });
    });
</script>