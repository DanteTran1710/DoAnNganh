<%-- 
    Document   : employeeProfile
    Created on : Aug 31, 2021, 11:50:30 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/user/employee_profile" var="action" />

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

<c:if test="${message != null}">
    <div id="toast">
        <div id="toast_main">
            <div class="toast_icon">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </div>
            <div class="toast_body">
                <h3 class="toast_title">THÔNG BÁO!</h3>
                <div class="toast_message">${Message}</div>
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
            Employer Profile
        </span>
        <div class="login100-form validate-form">
            <fieldset class="border p-2">
                <legend class="w-auto p-2">PERSONAL INFORMATION</legend>  

                <form:form method="post" action="${action}" modelAttribute="employee"
                           enctype="multipart/form-data">
                    <div class="personal-form grid-container">
                        <div class="grid-item form-group">
                            <label for="phone">Phone number</label>
                            <form:input value="${employee.phoneNumber}" type="text" path="phoneNumber" id="phoneNumber" placeholder="Phone number"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="dob">Day of birth</label>
                            <form:input type="text" path="dob" id="dob" placeholder="Your DOB"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="dob">Sex:</label>&nbsp;
                            Male&nbsp;<form:radiobutton path="sex" value="0"/>&nbsp;
                            Female&nbsp;<form:radiobutton path="sex" value="1"/>&nbsp;
                        </div>
                        <div class="grid-item form-group">
                            <label for="nationality">Nationality</label>
                            <form:select path="nationality" id="nationality" class="custom-select w-75">
                                <form:option value="Local VietNamese">Local VietNamese</form:option>
                                <form:option value="Foreigner">Foreigner</form:option>
                            </form:select>
                        </div>
                        <div class="grid-item form-group">
                            <label for="address">Address</label>
                            <form:input type="text" path="address" id="address" placeholder="Address"/>
                        </div>
                                                <div class="grid-item form-group">
                            <label for="file">Address</label>
                            <form:input type="file" path="file" id="file"/>
                        </div>
                    </div>
                    <div class="accept-section">
                        <div class="requireText">
                            *This is required fields
                        </div>
                        <div class="save_cancelButtons">
                            <div class="container-login100-form-btn mr-2">
                                <button type="cancel" class="login100-form-btn cancel">CANCEL</button>
                            </div>
                            <div class="container-login100-form-btn">
                                <button type="submit" class="login100-form-btn update">UPDATE</button>
                            </div>
                        </div>
                    </div>
                </form:form>
            </fieldset>
        </div>
    </div>
</div>