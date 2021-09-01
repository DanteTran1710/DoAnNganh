<%-- 
    Document   : employerProfile
    Created on : Aug 31, 2021, 11:50:41 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/user/employer_profile" var="action" />
<%--<c:if test="${errorMessage != null}">
        <div id="toast">
        <div id="toast_main">
            <div class="toast_icon">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </div>
            <div class="toast_body">
                <h3 class="toast_title">THẤT BẠI!</h3>
                <div class="toast_message">${errorMessage}</div>
            </div>
            <div class="toast_close" onclick="removeToast();">
                <i class="fa fa-times" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</c:if>--%>
<!DOCTYPE html>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="<c:url value="/img/signup-login/img-01.png"/>" alt="IMG">
            </div>
            <div class="login100-form validate-form">
                <span class="login100-form-title">
                    UPDATE PROFILE
                </span>
                <div class="employer-form">
                    <form:form method="post" action="${action}" class="register-form" id="register-form" modelAttribute="employer">
                        <div class="form-group">
                            <label for="companyName"><i class="fa fa-user-o"></i></label>
                                <form:input type="text" path="companyName" id="name" placeholder="Company Name"/>
                        </div>
                        <div class="form-group">
                            <label for="lastName"><i class="fa fa-user-o"></i></label>
                                <form:input type="text" path="orientation" id="name" placeholder="Orientation"/>
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="fa fa-envelope-o" aria-hidden="true"></i></label>
                                <form:input type="text" path="address" id="email" placeholder="Address"/>
                        </div>
                        <div class="form-group">
                            <label for="username"><i class="fa fa-address-card-o" aria-hidden="true"></i></label>
                                <form:input type="username" path="description" id="username" placeholder="Description Company"/>
                        </div>
                        <div class="container-login100-form-btn">
                            <button type="submit" class="login100-form-btn">UPDATE</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
