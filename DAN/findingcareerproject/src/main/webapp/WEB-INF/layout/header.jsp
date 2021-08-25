<%-- 
    Document   : header
    Created on : Aug 16, 2021, 10:01:16 PM
    Author     : hp
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<!-- ======= Header ======= -->
<header id="header">
    <div class="container d-flex">

        <div class="logo mr-auto">
            <h1 class="text-light"><a href="<c:url value="/" />"><span><property:message code="contentV.nameWebsite"/></span></a></h1>
        </div>

        <nav class="nav-menu d-none d-lg-block">
            <ul>
                <li class="active"><a href="<c:url value="/" />">Home</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#team">Team</a></li>

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
                <li><a href="#contact">Contact Us</a></li>
                <li></li>

            </ul>
        </nav><!-- .nav-menu --> 
        <nav class="logo m-auto nav-menu " id="profile">
            <div class="text-light " id="login">
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <div>
                        <a href="<c:url value="/login" />" class="title">
                            <i class="fa fa-user-o" aria-hidden="true"></i>&nbsp;&nbsp;LOGIN
                        </a>
                    </div>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <div class="drop-down">
                        <a href="<c:url value="/" />">
                            ${pageContext.request.userPrincipal.name}&nbsp;
                        </a>
                        <ul>
                            <li>
                                <a href="<c:url value="/logout" />">
                                    <i class="fa fa-unlock-alt" aria-hidden="true"></i>&nbsp;&nbsp;LOGOUT
                                </a>
                            </li>
                            <li>
                                <a href="<c:url value="/" />">
                                    <i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;EDIT PROFILE
                                </a>
                            </li>
                            <li>
                                <security:authorize access="hasRole('ROLE_ADMIN')"> 
                                    <a href="<c:url value="/admin" />">
                                        <i class="fa fa-key" aria-hidden="true"></i>&nbsp;&nbsp;ADMINISTRATE
                                    </a>
                                </security:authorize>
                            </li>
                        </ul>
                    </div>
                </c:if>
            </div>
        </nav>
    </div>
</header>
<!-- End Header -->
