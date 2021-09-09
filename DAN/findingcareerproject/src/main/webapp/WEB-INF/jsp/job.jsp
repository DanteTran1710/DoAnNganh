<%-- 
    Document   : job
    Created on : Aug 25, 2021, 10:19:19 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<!-- ======= JOBS Section ======= -->
<section id="job" class="job">
    <div class="container">
        <div class="filter input-group mb-3">
            <nav class="nav-menu d-none d-lg-block">
                <ul>
                    <li class="active"><a href="<c:url value="/" />">Home</a></li>
                    <li><a href="<c:url value="/jobs" />">Jobs</a></li>
                    <li class="drop-down"><a href="">Drop Down</a>
                        <ul>
                            <li><a href="#">Drop Down 1</a></li>
                            <li class="drop-down"><a href="#">Drop Down 2</a>
                                <ul>
                                    <li><a href="#">Deep Drop Down 1</a></li>
                                    <li><a href="#">Deep Drop Down 2</a></li>
                                    <li><a href="#">Deep Drop Down 3</a></li>
                                    <li><a href="#">Deep Drop Down 4</a></li>
                                    <li><a href="#">Deep Drop Down 5</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Drop Down 3</a></li>
                            <li><a href="#">Drop Down 4</a></li>
                            <li><a href="#">Drop Down 5</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="search input-group mb-3">
            <input type="text" class="form-control" placeholder="Search">
            <div class="input-group-append">
                <button class="btn-search" type="submit">Go</button>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="filter-result">
            
        </div>
    </div>
    <div class="container">
        <div class="row pb-4">
            <div class="col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                <div class="icon-box">
                    <div class="box1">
                        <div class="icon"></div>
                        <h4 class="title"><a href="<c:url value="/jobs/recruitment"/>">Title</a></h4>
                    </div>
                    <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi</p>
                </div>
            </div>
            <div class="col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                <div class="icon-box">
                    <div class="icon"></div>
                    <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
                    <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
                </div>
            </div>
        </div>
        <nav class="pagi">
            <ul class="pagination pagination-lg justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="#">
                        <i class="fa fa-caret-left" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">
                        <i class="fa fa-caret-right" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </nav>
</section><!-- End Our Services Section -->
