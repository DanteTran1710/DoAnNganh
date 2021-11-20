<%-- 
    Document   : manageCVs
    Created on : Nov 11, 2021, 10:47:57 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>

<c:if test="${msgState != null}">
    <div id="toast">
        <div id="toast_main">
            <div class="toast_icon">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </div>
            <div class="toast_body">
                <h3 class="toast_title">THÔNG BÁO!</h3>
                <div class="toast_message">${msgState}</div>
            </div>
            <div class="toast_close" onclick="removeToast();">
                <i class="fa fa-times" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</c:if>
<!-- ======= JOBS Section ======= -->
<section id="job" class="job">
    <!-- SEARCH SECTION -->
    <div class="container">
        <form action="">
            <div class="search input-group mb-3">
                <input type="text" name="kw" class="form-control" placeholder="Search">
                <div class="input-group-append">
                    <button class="btn-search" type="submit">Go</button>
                </div>
            </div>
        </form>
    </div>
    <div class="container">
        <!-- JOB SECTION -->
        <div class="row pb-4">
            <c:forEach var="c" items="${cvs}">
                <div class="col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                    <div class="icon-box d-flex">
                        <div class="box2">
                            <p>
                                <i class="fa fa-folder-o" aria-hidden="true"></i>
                                JOB: ${c[0]}
                            </p>
                            <p class="phoneNumber">
                                <i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;
                                Employee's contact: ${c[2]}
                            </p>
                        </div>
                        <div id="browseCv" class="browseCv manage pr-2">
                            <c:if test="${c[4] == 'received'}">
                                <div><a id="accept" onclick="updateState(${c[3]}, 'accept')">Accept</a></div>
                                <div><a id="decline" onclick="updateState(${c[3]}, 'decline')">Decline</a></div>
                            </c:if>
                            <c:if test="${c[4] == 'accept'}">
                                <div><a id="decline" href="#" onclick="updateState(${c[3]}, 'decline')">Decline</a></div>
                            </c:if>
                        </div>    
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- CLASSIFY THE PAGINATION BY THE CONDITIONS -->
        <nav class="pagi">
            <ul class="pagination pagination-lg justify-content-center">
                <c:forEach begin="1" end="${Math.ceil(counter/4)}" step="1" var="i">
                    <li class="page-item">
                        <a class="page-link" href="<c:url value="/employer/cv"/>?page=${i}">${i}</a>
                    </li>
                </c:forEach>
            </ul>
        </nav>
    </div>
</section><!-- End Our Services Section -->

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
