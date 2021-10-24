<%-- 
    Document   : listEmployers
    Created on : Oct 6, 2021, 11:03:31 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<!-- ======= JOBS Section ======= -->
<section id="job" class="job">
    <!-- SEARCH SECTION -->
    <div class="container">
        <form action="">
            <div class="search input-group mb-3">
                <input type="text" name="kw" class="form-control" placeholder="Search by company name">
                <div class="input-group-append">
                    <button class="btn-search" type="submit">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>
    <c:if test="${counter > 0}">
        <div class="container">
            <!-- JOB SECTION -->
            <div class="row pb-4">
                <c:forEach var="e" items="${employer}">
                    <div class="col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                        <div class="icon-box">
                            <div class="box1">
                                <div class="infor-section">
                                    <div class="ti">
                                        <h4 class="title-com">
                                            <a href="<c:url value="/employee/employer-details/${e[0]}"/>">${e[1]}</a>
                                        </h4>
                                    </div>
                                    <div class="star">
                                        <c:set value="${Math.floor(e[7])}" var="st"/>
                                        <c:forEach begin="1" end="${st}" >
                                            <i class="fa fa-star star-rated" aria-hidden="true"
                                               style=" color:#ffcc00; font-size: 20px;" ></i>
                                        </c:forEach>
                                        <c:forEach begin="${st+1}" end="5" >
                                            <i class="fa fa-star star-rated" aria-hidden="true"
                                               style=" color:#ccc; font-size: 20px;" ></i>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="infor-section">
                                    <div style="width: 60%">
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
                                        <p class="orientation">
                                            <i class="fa fa-quote-left" aria-hidden="true"></i>&nbsp;
                                            ${e[5]}
                                        </p>
                                    </div>
                                    <div class="img-com-section">
                                        <img src="${e[6]}"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <!-- CLASSIFY THE PAGINATION BY THE CONDITIONS -->
            <nav class="pagi">
                <ul class="pagination pagination-lg justify-content-center">
                    <c:forEach begin="1" end="${Math.ceil(counter/3)}" step="1" var="i">
                        <li class="page-item">
                            <a class="page-link" href="<c:url value="/employer/find-employees"/>?page=${i}">${i}</a>
                        </li>
                    </c:forEach>
                </ul>
            </nav>
        </div>
    </c:if>
    <c:if test="${counter == 0}">
        <div class="container">
            <div class="empty-result">
                <i class="fa fa-times fa-5x pt-3" aria-hidden="true"></i>
                <p>
                    We have not found jobs for this search at the moment
                </p>
            </div>
        </div>
    </c:if>
</section><!-- End Our Services Section -->

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>