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
        <!-- THE FILTER OF CONDITIONS -->
        <div class="filter input-group mb-3">
            <nav class="nav-menu d-none d-lg-block">
                <ul>
                    <!-- THE LEVEL FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/jobs"/>">Tất cả cấp bậc</a>
                        <ul class="scrolltable">
                            <c:url value="/jobs" var="ps">
                                <c:param name="kw" value="Thực tập sinh/Sinh viên"></c:param>
                            </c:url>
                            <li><a href="${ps}">Thực tập sinh/Sinh viên</a></li>
                                <c:url value="/jobs" var="ps">
                                    <c:param name="kw" value="Mới tốt nghiệp"></c:param>
                                </c:url>
                            <li><a href="${ps}">Mới tốt nghiệp</a></li>
                                <c:url value="/jobs" var="ps">
                                    <c:param name="kw" value="Nhân viên"></c:param>
                                </c:url>
                            <li><a href="${ps}">Nhân viên</a></li>
                                <c:url value="/jobs" var="ps">
                                    <c:param name="kw" value="Trưởng phòng"></c:param>
                                </c:url>
                            <li><a href="${ps}">Trưởng phòng</a></li>
                                <c:url value="/jobs" var="ps">
                                    <c:param name="kw" value="Giám đốc và cao cấp hơn"></c:param>
                                </c:url>
                            <li><a href="${ps}">Giám đốc và cao cấp hơn</a></li>
                        </ul>
                    </li>
                    <!-- THE CATEGORY FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/jobs"/>">Tất cả ngành nghề</a>
                        <ul class="scrolltable">
                            <c:forEach var="cat" items="${category}">
                                <c:url value="/jobs" var="nameJ">
                                    <c:param name="kw" value="${cat.nameJob}"></c:param>
                                </c:url>
                                <li><a href="${nameJ}">${cat.nameJob}</a></li>
                                </c:forEach>
                        </ul>
                    </li>
                    <!-- THE SALARY FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/jobs"/>">Tất cả mức lương</a>
                        <ul class="scrolltable">
                            <c:url value="/jobs" var="sl">
                                <c:param name="kw" value="1-500"></c:param>
                            </c:url>
                            <li><a href="${sl}"><= $500</a></li>
                                <c:url value="/jobs" var="sl">
                                    <c:param name="kw" value="500-1000"></c:param>
                                </c:url>
                            <li><a href="${sl}">$500 - $1000</a></li>
                                <c:url value="/jobs" var="sl">
                                    <c:param name="kw" value="1000-2000"></c:param>
                                </c:url>
                            <li><a href="${sl}">$1000 - 2000</a></li>
                                <c:url value="/jobs" var="sl">
                                    <c:param name="kw" value="2000-0"></c:param>
                                </c:url>
                            <li><a href="${sl}">>= $2000</a></li>
                                <c:url value="/jobs" var="sl">
                                    <c:param name="kw" value="0-0"></c:param>
                                </c:url>
                            <li><a href="${sl}">Thương Lượng</a></li>
                        </ul>
                    </li>
                    <c:url value="/jobs" var="jobnow">
                        <c:param name="kw" value="1"></c:param>
                    </c:url>
                    <li><a href="${jobnow}">Việc làm cần gấp</a></li>
                </ul>
            </nav>
        </div>
    </div>
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
    <c:if test="${counter > 0}">
        <div class="container">
            <!-- JOB SECTION -->
            <div class="row pb-4">
                <c:forEach var="r" items="${recruitment}">
                    <div class="col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                        <div class="icon-box">
                            <div class="box1">
                                <div class="icon"><i class="fa fa-list-alt" aria-hidden="true"></i></div>
                                <h4 class="title"><a href="<c:url value="/recruitment/${r[0]}"/>">${r[1]}</a></h4>
                            </div>
                            <div class="jobinfo">
                                <p class="company">
                                    <i class="fa fa-building-o" aria-hidden="true"></i>&nbsp;
                                    Company: ${r[6]}
                                </p>
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
                                    <i class="fa fa-hashtag" aria-hidden="true"></i>&nbsp;
                                    Category: ${r[8]}
                                </p>
                                <p class="phoneNumber">
                                    <i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;
                                    Contact: ${r[9]}
                                </p>
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
                            <a class="page-link" href="<c:url value="/jobs"/>?page=${i}">${i}</a>
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
