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
                                <c:param name="position" value="Thực tập sinh/Sinh viên"></c:param>
                            </c:url>
                            <li><a href="${ps}">Thực tập sinh/Sinh viên</a></li>
                                <c:url value="/jobs" var="ps">
                                    <c:param name="position" value="Mới tốt nghiệp"></c:param>
                                </c:url>
                            <li><a href="${ps}">Mới tốt nghiệp</a></li>
                                <c:url value="/jobs" var="ps">
                                    <c:param name="position" value="Nhân viên"></c:param>
                                </c:url>
                            <li><a href="${ps}">Nhân viên</a></li>
                                <c:url value="/jobs" var="ps">
                                    <c:param name="position" value="Trưởng phòng"></c:param>
                                </c:url>
                            <li><a href="${ps}">Trưởng phòng</a></li>
                                <c:url value="/jobs" var="ps">
                                    <c:param name="position" value="Giám đốc và cao cấp hơn"></c:param>
                                </c:url>
                            <li><a href="${ps}">Giám đốc và cao cấp hơn</a></li>
                        </ul>
                    </li>
                    <!-- THE CATEGORY FILTER OF CONDITIONS -->
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
                    <!-- THE SALARY FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="">Tất cả mức lương</a>
                        <ul class="scrolltable">
                            <c:url value="/jobs" var="sl">
                                <c:param name="salary" value="1-500"></c:param>
                            </c:url>
                            <li><a href="${sl}"><= $500</a></li>
                                <c:url value="/jobs" var="sl">
                                    <c:param name="salary" value="500-1000"></c:param>
                                </c:url>
                            <li><a href="${sl}">$500 - $1000</a></li>
                                <c:url value="/jobs" var="sl">
                                    <c:param name="salary" value="1000-2000"></c:param>
                                </c:url>
                            <li><a href="${sl}">$1000 - 2000</a></li>
                                <c:url value="/jobs" var="sl">
                                    <c:param name="salary" value="2000-0"></c:param>
                                </c:url>
                            <li><a href="${sl}">>= $2000</a></li>
                                <c:url value="/jobs" var="sl">
                                    <c:param name="salary" value="0-0"></c:param>
                                </c:url>
                            <li><a href="${sl}">Thương Lượng</a></li>
                        </ul>
                    </li>
                    <c:url value="/jobs" var="jobnow">
                        <c:param name="now" value="1"></c:param>
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
    <div class="container">
        <div class="filter-result">

        </div>
    </div>

    <c:set value="${recruitment}" var="list" />
    <div class="container">
        <!-- JOB SECTION -->
        <div class="row pb-4">
            <c:forEach var="r" items="${list.pageList}">
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
        <!-- CLASSIFY THE PAGINATION BY THE CONDITIONS -->
        <nav class="pagi">
            <!-- NO CONDITIONS -->
            <c:if test="${idCate == null && keyword == null && position == null }">
                <ul class="pagination pagination-lg justify-content-center">
                    <c:choose>
                        <c:when test="${list.firstPage}">
                            <li class="page-item">
                                <a class="page-link" style="background-color: transparent">
                                    <i class="fa fa-caret-left" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="<c:url value="/jobs"/>?page=prev">
                                    <i class="fa fa-caret-left" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                    <c:forEach begin="1" end="${list.pageCount}" step="1" varStatus="i">
                        <li class="page-item">
                            <a class="page-link" href="<c:url value="/jobs"/>?page=${i.index}">${i.index}</a>
                        </li>
                    </c:forEach>
                    <c:choose>
                        <c:when test="${list.lastPage}">
                            <li class="page-item">
                                <a class="page-link" style="background-color: transparent">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="<c:url value="/jobs"/>?page=next">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </c:if>
            <!-- KEYWORD CONDITIONS -->
            <c:if test="${keyword != null}">
                <ul class="pagination pagination-lg justify-content-center">
                    <c:choose>
                        <c:when test="${list.firstPage}">
                            <li class="page-item">
                                <a class="page-link" style="background-color: transparent">
                                    <i class="fa fa-caret-left" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="<c:url value="/jobs"/>?kw=${keyword}&page=prev">
                                    <i class="fa fa-caret-left" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>

                    <c:forEach begin="1" end="${list.pageCount}" step="1" varStatus="i">
                        <li class="page-item">
                            <a class="page-link" href="
                               <c:url value="/jobs"/>?kw=${keyword}&page=${i.index}">${i.index}
                            </a>
                        </li>
                    </c:forEach>
                    <c:choose>
                        <c:when test="${list.lastPage}">
                            <li class="page-item">
                                <a class="page-link" style="background-color: transparent">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="<c:url value="/jobs"/>?kw=${keyword}&page=next">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </c:if>
            <!-- CATEGORY CONDITIONS -->
            <c:if test="${idCate != null}">
                <ul class="pagination pagination-lg justify-content-center">
                    <c:choose>
                        <c:when test="${list.firstPage}">
                            <li class="page-item">
                                <a class="page-link" style="background-color: transparent">
                                    <i class="fa fa-caret-left" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="<c:url value="/jobs"/>?idCat=${idCate}&page=prev">
                                    <i class="fa fa-caret-left" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                    <c:forEach begin="1" end="${list.pageCount}" step="1" varStatus="i">
                        <li class="page-item">
                            <a class="page-link" href="
                               <c:url value="/jobs"/>?idCat=${idCate}&page=${i.index}">${i.index}
                            </a>
                        </li>
                    </c:forEach>
                    <c:choose>
                        <c:when test="${list.lastPage}">
                            <li class="page-item">
                                <a class="page-link" style="background-color: transparent">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="?idCat=${idCate}&page=next">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </c:if>
            <!-- POSITION CONDITIONS -->
            <c:if test="${position != null }">
                <ul class="pagination pagination-lg justify-content-center">
                    <c:choose>
                        <c:when test="${list.firstPage}">
                            <li class="page-item">
                                <a class="page-link" style="background-color: transparent">
                                    <i class="fa fa-caret-left" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="<c:url value="/jobs"/>?position=${position}&page=prev">
                                    <i class="fa fa-caret-left" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                    <c:forEach begin="1" end="${list.pageCount}" step="1" varStatus="i">
                        <li class="page-item">
                            <a class="page-link" href="<c:url value="/jobs"/>?position=${position}&page=${i.index}">${i.index}</a>
                        </li>
                    </c:forEach>
                    <c:choose>
                        <c:when test="${list.lastPage}">
                            <li class="page-item">
                                <a class="page-link" style="background-color: transparent">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="<c:url value="/jobs"/>?position=${position}&page=next">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </c:if>
        </nav>
    </div>
</section><!-- End Our Services Section -->

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
