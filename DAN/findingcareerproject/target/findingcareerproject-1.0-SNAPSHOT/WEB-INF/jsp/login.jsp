<%-- 
    Document   : login
    Created on : Aug 17, 2021, 10:36:31 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/login" var="action" />
<!DOCTYPE html>

<!-- CHECK OUT THE ERROR AND SHOW TOAST MESSAGE  -->
<c:if test="${param.error != null}">
        <div id="toast">
        <div id="toast_main">
            <div class="toast_icon">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </div>
            <div class="toast_body">
                <h3 class="toast_title">THẤT BẠI!</h3>
                <div class="toast_message">Hệ thống xảy ra lỗi vui lòng thử lại</div>
            </div>
            <div class="toast_close" onclick="removeToast();">
                <i class="fa fa-times" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</c:if>
<c:if test="${param.accessDenied != null}">
        <div id="toast">
        <div id="toast_main">
            <div class="toast_icon">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </div>
            <div class="toast_body">
                <h3 class="toast_title">THẤT BẠI!</h3>
                <div class="toast_message">Bạn không có quyền truy cập!</div>
            </div>
            <div class="toast_close" onclick="removeToast();">
                <i class="fa fa-times" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</c:if>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="<c:url value="/img/signup-login/img-01.png"/>" alt="IMG">
            </div>

            <div class="login100-form validate-form">
                <span class="login100-form-title">
                    Member Login
                </span>
                <div class="signup-form">
                    <form method="post" action="${action}">
                        <div class="form-group">
                            <label for="username"><i class="fa fa-user-circle" aria-hidden="true"></i></label>
                            <input type="text" name="username" id="username" placeholder="Your Username"/>
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="fa fa-lock" aria-hidden="true"></i></label>
                            <input type="password" name="password" id="pass" placeholder="Password"/>
                        </div>
                        <div class="container-login100-form-btn">     
                            <button onclick=""  type ="submit" class="login100-form-btn">
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
                            CREATE YOUR ACCOUNT
                            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
