<%-- 
    Document   : login
    Created on : Aug 17, 2021, 10:36:31 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="<c:url value="/img/signup-login/img-01.png"/>" alt="IMG">
            </div>

            <form class="login100-form validate-form">
                <span class="login100-form-title">
                    Member Login
                </span>

                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form">

                        <div class="form-group">
                            <label for="email"><i class="fa fa-user-circle" aria-hidden="true"></i></label>
                            <input type="email" name="email" id="email" placeholder="Your Email"/>
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="fa fa-lock" aria-hidden="true"></i></label>
                            <input type="password" name="pass" id="pass" placeholder="Password"/>
                        </div>
                        <div class="container-login100-form-btn">     
                            <button class="login100-form-btn">
                                Login
                            </button>
                        </div>

                    </form>
                    <div class="text-center p-t-12">
                        <span class="txt1">
                            Forgot
                        </span>
                        <a class="txt2" href="#">
                            Username / Password?
                        </a>
                    </div>

                    <div class="text-center p-t-136">
                        <a class="txt2" href="<c:url value="/signup"/>">
                            Create your Account
                            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>

