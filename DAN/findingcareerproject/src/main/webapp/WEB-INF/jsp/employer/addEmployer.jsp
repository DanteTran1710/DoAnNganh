<%-- 
    Document   : addEmployer
    Created on : Sep 9, 2021, 5:41:46 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/add_employer" var="action" />

<c:if test="${errorMessage != null}">
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
</c:if>

<div class="container-login100">
    <div class="wrap-login100">
        <span class="login100-form-title">
            Create Employer Account
        </span>
        <div class="login100-pic js-tilt" data-tilt>
            <img src="<c:url value="/img/signup-login/img-01.png"/>" alt="IMG">
        </div>
        <div class="login-form">
            <div class="signup-form">
                <form:form method="post" action="${action}" modelAttribute="employer">
                    <div class="form-group">
                        <label for="phone">Phone number</label>
                        <form:input type="text" path="phoneNumber" id="phoneNumber" placeholder="Phone number"/>
                    </div>
                    <div class="form-group">
                        <label for="companyName">Company name</label>
                        <form:input type="text" path="companyName" id="companyName" placeholder="Company Name"/>
                    </div>
                    <div class="form-group">
                        <label for="orientation">Orientation</label>
                        <form:input type="text" path="orientation" id="orientation" placeholder="Your Orientation"/>
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <form:input type="text" path="address" id="address" placeholder="Address"/>
                    </div>
                    <div class="form-group">
                        <label for="description">Description for company</label>
                        <form:textarea type="textarea" path="description" id="description"/>
                    </div>
                    <div class="container-login100-form-btn">
                        <button type="submit" class="login100-form-btn">UPDATE</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
