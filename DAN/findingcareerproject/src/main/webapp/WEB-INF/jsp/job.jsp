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
                    <li class="drop-down"><a href="">Tất cả cấp bậc</a>
                        <ul class="scrolltable">
                            <li><a href="#">Thực tập sinh/Sinh viên</a></li>
                            <li><a href="#">Mới tốt nghiệp</a></li>
                            <li><a href="#">Nhân viên</a></li>
                            <li><a href="#">Trưởng phòng</a></li>
                            <li><a href="#">Giám đốc và cao cấp hơn</a></li>
                        </ul>
                    </li>
                    <li class="drop-down"><a href="<c:url value="/jobs"/>">Tất cả ngành nghề</a>
                        <ul class="scrolltable">
                            <c:forEach var="cat" items="${category}">
                                <c:url value="/jobs" var="id">
                                    <c:param name="idCat" value="${cat.idCategory}"></c:param>
                                </c:url>
                                <li><a href="${id}">${cat.nameJob}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li class="drop-down"><a href="">Tất cả mức lương</a>
                        <ul class="scrolltable">
                            <li><a href="#"><= $500</a></li>
                            <li><a href="#">$500 - $1000</a></li>
                            <li><a href="#">$1000 - 2000</a></li>
                            <li><a href="#">$2000 - $3000</a></li>
                            <li><a href="#">>= $3000</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Việc làm cần gấp</a></li>
                </ul>
            </nav>
        </div>
    </div>
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
        <div class="row pb-4">
            <c:forEach var="r" items="${recruitment}">
                <div class="col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                    <div class="icon-box">
                        <div class="box1">
                            <div class="icon"></div>
                            <h4 class="title"><a href="<c:url value="/recruitment/${r.idRecruitment}"/>">${r.title}</a></h4>
                        </div>
                        <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi</p>
                    </div>
                </div>
            </c:forEach>
        </div>
        <nav class="pagi">
            <ul class="pagination pagination-lg justify-content-center">

                <li class="page-item">
                    <a class="page-link" href="#">
                        <i class="fa fa-caret-left" aria-hidden="true"></i>
                    </a>
                </li>
                <c:forEach begin="1" end="${Math.ceil(counter/3)}" var="i">
                    <li class="page-item">
                        <a class="page-link" href="<c:url value="/jobs"/>?page=${i}">${i}</a>
                    </li>
                </c:forEach>
                <li class="page-item">
                    <a class="page-link" href="#">
                        <i class="fa fa-caret-right" aria-hidden="true"></i>
                    </a>
                </li>

            </ul>
        </nav>
</section><!-- End Our Services Section -->
