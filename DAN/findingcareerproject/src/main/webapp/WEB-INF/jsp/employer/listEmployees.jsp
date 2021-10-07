<%-- 
    Document   : listEmployees
    Created on : Oct 6, 2021, 11:03:59 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<!-- ======= EMPLYEES Section ======= -->
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
        <div class="filter-result">

        </div>
    </div>

    <div class="container">
        <!-- JOB SECTION -->
        <div class="row pb-4">
            <c:forEach var="e" items="${employees}">
                <div class="col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                    <div class="icon-box">
                        <div class="icon"></div>
                        <div class="box1">
                            <h4 class="title"><a href="<c:url value="/recruitment/${e[0]}"/>">${e[1]}&nbsp;${e[2]}</a></h4>
                            <p class="description">${e[6]} ${e[5]} ${e[7]}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- CLASSIFY THE PAGINATION BY THE CONDITIONS -->
        ${counter}
        <nav class="pagi">
            <ul class="pagination pagination-lg justify-content-center">
                <c:forEach begin="1" end="${Math.ceil(counter/3)}" step="1" var="i">
                    <li class="page-item">
                        <a class="page-link" href="<c:url value="/jobs"/>?page=${i}">${i}</a>
                    </li>
                </c:forEach>
            </ul>
        </nav>
    </div>
</section><!-- End Our Services Section -->

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
