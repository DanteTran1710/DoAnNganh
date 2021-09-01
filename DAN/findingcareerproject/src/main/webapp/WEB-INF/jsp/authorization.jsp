<%-- 
    Document   : authorize
    Created on : Aug 30, 2021, 9:35:49 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<!-- ======= AUTHORIZATION Section ======= -->
<section id="authorize" class="authorize">
    <div class="container">
        <div class="row pb-4">
            <div class="col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                <div class="icon-box">
                    <div class="icon"><i class="fa fa-user fa-2x" aria-hidden="true"></i></div>
                    <div class="content">
                        <h4 class="title"><a href="">EMPLOYEE ACCOUNT</a></h4>
                        <button type="button" class="btn btn-outline-danger"
                                onclick="window.location.href='employee_profile'">
                            CHANGE
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                <div class="icon-box">
                    <div class="icon"><i class="fa fa-building-o fa-2x" aria-hidden="true"></i></div>
                    <div class="content">
                        <h4 class="title"><a href="">EMPLOYER ACCOUNT</a></h4>
                        <button type="button" class="btn btn-outline-danger"
                                onclick="window.location.href='employer_profile'">
                            CHANGE
                        </button>
                    </div>
                </div>
            </div>
        </div>
</section><!-- End Our Services Section -->