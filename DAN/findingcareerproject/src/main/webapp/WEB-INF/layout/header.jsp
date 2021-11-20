<%-- 
    Document   : header
    Created on : Aug 16, 2021, 10:01:16 PM
    Author     : hp
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<!-- ======= Header ======= -->
<header id="header">
    <div class="container d-flex">

        <div class="logo mr-auto">
            <h1 class="text-light"><a href="<c:url value="/" />">FINDING JOB</a></h1>
        </div>

        <nav class="nav-menu d-none d-lg-flex" >
            <ul>
                <li class="active"><a href="<c:url value="/" />">Home</a></li>
                <li><a href="<c:url value="/jobs" />">Jobs</a></li>
                <li><a href="#services">Services</a></li>
                <li>                   
                    <security:authorize access="hasRole('ROLE_EMPLOYEE')"> 
                        <a href="<c:url value="/employee/find-employers"/>">Employers</a>
                    </security:authorize>
                </li>
                <li>                   
                    <security:authorize access="hasRole('ROLE_EMPLOYER')"> 
                        <a href="<c:url value="/employer/find-employees"/>">Employees</a>
                    </security:authorize>
                </li>
                <li><a href="#contact">Contact Us</a></li>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <li>
                        <a href="<c:url value="/login" />" class="title">
                            <i class="fa fa-user-o" aria-hidden="true"></i>&nbsp;&nbsp;LOGIN
                        </a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <li class="drop-down">
                        <a href="<c:url value="/"/>">
                            <security:authorize access="hasRole('ROLE_EMPLOYER')">
                                <i class="fa fa-building-o" aria-hidden="true"></i>&nbsp;
                            </security:authorize>
                            <security:authorize access="hasRole('ROLE_EMPLOYEE')">
                                <i class="fa fa-user" aria-hidden="true"></i>&nbsp;
                            </security:authorize>
                            <security:authorize access="hasRole('ROLE_ADMIN')">
                                <i class="fa fa-key" aria-hidden="true"></i>&nbsp;
                            </security:authorize>
                            ${pageContext.request.userPrincipal.name}&nbsp;
                        </a>
                        <ul>
                            <li>
                                <a href="<c:url value="/logout" />">
                                    <i class="fa fa-unlock-alt" aria-hidden="true"></i>&nbsp;&nbsp;LOGOUT
                                </a>
                            </li>
                            <li>
                                <security:authorize access="hasRole('ROLE_EMPLOYER')"> 
                                    <a href="<c:url value="/employer/employer-profile"/>">
                                        <i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;EDIT PROFILE
                                    </a>
                                </security:authorize>
                            </li>
                            <li>
                                <security:authorize access="hasRole('ROLE_EMPLOYER')"> 
                                    <a href="<c:url value="/employer/manage"/>">
                                        <i class="fa fa-server" aria-hidden="true"></i>&nbsp;&nbsp;MANAGE RECRUITMENT
                                    </a>
                                </security:authorize>
                            </li>
                            <li>
                                <security:authorize access="hasRole('ROLE_EMPLOYER')"> 
                                    <a href="<c:url value="/employer/cv"/>">
                                        <i class="fa fa-server" aria-hidden="true"></i>&nbsp;&nbsp;MANAGE CVs
                                    </a>
                                </security:authorize>
                            </li>
                            <li>
                                <security:authorize access="hasRole('ROLE_EMPLOYEE')">
                                    <a href="<c:url value="/employee/employee-profile"/>">
                                        <i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;EDIT PROFILE
                                    </a>
                                </security:authorize>
                            </li>
                            <li>
                                <security:authorize access="hasRole('ROLE_USER')"> 
                                    <a href="<c:url value="/user/authorize" />">
                                        <i class="fa fa-key" aria-hidden="true"></i>&nbsp;&nbsp;DEFINE ACCOUNT
                                    </a>
                                </security:authorize>
                            </li>
                            <li>
                                <security:authorize access="hasRole('ROLE_ADMIN')"> 
                                    <a href="<c:url value="/admin" />">
                                        <i class="fa fa-key" aria-hidden="true"></i>&nbsp;&nbsp;ADMINISTRATE
                                    </a>
                                </security:authorize>
                            </li>
                        </ul>
                    </li>
                </c:if>
            </ul>
        </nav><!-- .nav-menu --> 
    </div>
</header>
<!-- End Header -->
