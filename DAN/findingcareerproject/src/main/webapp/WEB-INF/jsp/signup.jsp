<%-- 
    Document   : signup
    Created on : Aug 21, 2021, 9:08:31 PM
    Author     : hp
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
                    SIGN UP
                </span>
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form">
                        <div class="form-group">
                            <label for="firstName"><i class="fa fa-user-o"></i></label>
                            <input type="text" name="name" id="name" placeholder="First Name"/>
                        </div>
                        <div class="form-group">
                            <label for="lastName"><i class="fa fa-user-o"></i></label>
                            <input type="text" name="name" id="name" placeholder="Last Name"/>
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="fa fa-envelope-o" aria-hidden="true"></i></label>
                            <input type="email" name="email" id="email" placeholder="Your Email"/>
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="fa fa-lock" aria-hidden="true"></i></label>
                            <input type="password" name="pass" id="pass" placeholder="Password"/>
                        </div>
                        <div class="form-group">
                            <label for="re-pass"><i class="fa fa-lock" aria-hidden="true"></i></label>
                            <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                        </div>
                    </form>
                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">
                            SIGN UP
                        </button>
                    </div>

                    <div class="text-center p-t-136">
                        <a class="txt2" href="<c:url value="/login"/>">
                            I'VE ALREADY HAVE AN ACCOUNT
                            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


