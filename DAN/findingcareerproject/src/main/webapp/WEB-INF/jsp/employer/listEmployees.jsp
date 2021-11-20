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
    <div class="container">
        <!-- THE FILTER OF CONDITIONS -->
        <div class="filter input-group mb-3">
            <nav class="nav-menu d-none d-lg-block">
                <ul>
                    <!-- THE NATIONALITY FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/employer/find-employees"/>">Nationality</a>
                        <ul class="ntl-scrolltable ">
                            <c:url value="/employer/find-employees" var="ps">
                                <c:param name="kw" value="Local Vietnamese"></c:param>
                            </c:url>
                            <li><a href="${ps}">Local Vietnamese</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="Foreigner"></c:param>
                                </c:url>
                            <li><a href="${ps}">Foreigner</a></li>
                        </ul>
                    </li>
                    <!-- THE LANGUAGE FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/employer/find-employees"/>">Language in used</a>
                        <ul class="scrolltable">
                            <c:url value="/employer/find-employees" var="ps">
                                <c:param name="kw" value="Vietnamese"></c:param>
                            </c:url>
                            <li><a href="${ps}">Vietnamese</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="English"></c:param>
                                </c:url>
                            <li><a href="${ps}">English</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="Chinese"></c:param>
                                </c:url>
                            <li><a href="${ps}">Chinese</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="French"></c:param>
                                </c:url>
                            <li><a href="${ps}">French</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="Japanese"></c:param>
                                </c:url>
                            <li><a href="${ps}">Japanese</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="Taiwanese"></c:param>
                                </c:url>
                            <li><a href="${ps}">Taiwanese</a></li>
                        </ul>
                    </li>
                    <!-- THE QUALIFICATION FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/employer/find-employees"/>">Qualification</a>
                        <ul class="scrolltable">
                            <c:url value="/employer/find-employees" var="ps">
                                <c:param name="kw" value="Đại học"></c:param>
                            </c:url>
                            <li><a href="${ps}">Đại học</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="Trung Cấp"></c:param>
                                </c:url>
                            <li><a href="${ps}">Trung Cấp</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="Cao đẳng"></c:param>
                                </c:url>
                            <li><a href="${ps}">Cao đẳng</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="Cử nhân"></c:param>
                                </c:url>
                            <li><a href="${ps}">Cử nhân</a></li>
                                <c:url value="/employer/find-employees" var="ps">
                                    <c:param name="kw" value="Thạc sĩ"></c:param>
                                </c:url>
                            <li><a href="${ps}">Thạc sĩ</a></li>
                        </ul>
                    </li>
                    <!-- THE CATEGORY FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/employer/find-employees"/>">ALl Job Category</a>
                        <ul class="scrolltable">
                            <c:forEach var="cat" items="${category}">
                                <c:url value="/employer/find-employees" var="nameJ">
                                    <c:param name="kw" value="${cat.nameJob}"></c:param>
                                </c:url>
                                <li><a href="${nameJ}">${cat.nameJob}</a></li>
                                </c:forEach>
                        </ul>
                    </li>
                    <!-- THE SALARY FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/employer/find-employees"/>">Salary level</a>
                        <ul class="scrolltable">
                            <c:url value="/employer/find-employees" var="sl">
                                <c:param name="kw" value="1"></c:param>
                            </c:url>
                            <li><a href="${sl}">< $500</a></li>
                                <c:url value="/employer/find-employees" var="sl">
                                    <c:param name="kw" value="2"></c:param>
                                </c:url>
                            <li><a href="${sl}">$500 - $1000</a></li>
                                <c:url value="/employer/find-employees" var="sl">
                                    <c:param name="kw" value="3"></c:param>
                                </c:url>
                            <li><a href="${sl}">$1000 - 2000</a></li>
                                <c:url value="/employer/find-employees" var="sl">
                                    <c:param name="kw" value="4"></c:param>
                                </c:url>
                            <li><a href="${sl}">> $2000</a></li>
                                <c:url value="/employer/find-employees" var="sl">
                                    <c:param name="kw" value="0"></c:param>
                                </c:url>
                            <li><a href="${sl}">Thương Lượng</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- SEARCH SECTION -->
    <div class="container">
        <form action="">
            <div class="search input-group mb-3">
                <input type="text" name="kw" class="form-control"
                       placeholder="Search by nationality, skill, language, qualification">
                <div class="input-group-append">
                    <button class="btn-search" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </div>
            </div>
        </form>
    </div>
    <c:if test="${counter > 0}">
        <div class="detail container">
            <div class="">
                <div class="scrolltable-emple">
                    <!-- JOB SECTION -->
                    <div class="pb-4">
                        <c:forEach var="e" items="${employees}">
                            <div class="p-2">
                                <div class="icon-box">
                                    <div class="box1">
                                        <div class="info">
                                            <h4 class="title">
                                                <a onclick="showEmployeeDetails(${e[11]})"/>
                                                    ${e[0]}&nbsp;${e[1]}
                                                </a>
                                            </h4>
                                            <c:if test="${e[3] == false}">
                                                <i class="fa fa-mars fa-lg" aria-hidden="true"></i>
                                            </c:if>
                                            <c:if test="${e[3] == true}">
                                                <i class="fa fa-venus fa-lg" aria-hidden="true"></i>
                                            </c:if>
                                        </div>
                                        <div class="infor-section">
                                            <div>
                                                <p class="email">
                                                    <i class="fa fa-envelope-o" aria-hidden="true"></i>&nbsp;
                                                    Email: ${e[2]}
                                                </p>
                                                <p class="phoneNumber">
                                                    <i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;
                                                    Contact: ${e[4]}
                                                </p>
                                                <p class="nationality">
                                                    <i class="fa fa-universal-access" aria-hidden="true"></i>&nbsp;
                                                    Nationality: ${e[5]}
                                                </p>
                                                <p class="qualification">
                                                    <i class="fa fa-graduation-cap" aria-hidden="true"></i>&nbsp;
                                                    Qualification: ${e[7]}
                                                </p>
                                                <p class="language">
                                                    <i class="fa fa-language" aria-hidden="true"></i>&nbsp;
                                                    Language in used: ${e[9]}
                                                </p>
                                            </div>
                                            <div class="img-section">
                                                <img src="${e[10]}" "alt="Hình ảnh không tồn tại"/>
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

            </div>
            <div class="emple-details">
                <div class="info" id="info">
                </div>
            </div>
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
