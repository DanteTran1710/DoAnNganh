<%-- 
    Document   : employerProfile
    Created on : Aug 31, 2021, 11:50:41 AM
    Author     : hp
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/employer/employer-profile" var="action" />

<c:if test="${message != null}">
    <div id="toast">
        <div id="toast_main">
            <div class="toast_icon">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </div>
            <div class="toast_body">
                <h3 class="toast_title">THÔNG BÁO!</h3>
                <div class="toast_message">${message}</div>
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
                <legend class="w-auto p-2">UPDATE PROFILE</legend>  

                <form:form method="post" action="${action}" modelAttribute="employer"
                           accept-charset="UTF-8" enctype="multipart/form-data">
                    <div class="details-form">
                        <div class="grid-item form-group">
                            <label for="phone">Email</label>
                            <form:input type="text" path="email" id="email" placeholder="Email"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="phone">Phone number</label>
                            <form:input type="text" path="phoneNumber" id="phoneNumber" placeholder="Phone number"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="companyName">Company name</label>
                            <form:input type="text" path="companyName" id="companyName" placeholder="Company Name"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="orientation">Orientation</label>
                            <form:input type="text" path="orientation" id="orientation" placeholder="Your Orientation"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="address">Address</label>
                            <form:input type="text" path="address" id="address" placeholder="Address"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="description">Description for company</label>
                            <form:textarea type="textarea" path="description" id="description"/>
                        </div>
                        <div class="grid-container">
                            <div class="grid-item form-group">
                                <label for="file">Upload Logo</label>
                                <form:input type="file" path="filelogo" id="filelogo"/>
                            </div>
                            <div class="grid-item form-group avatar">
                                <img src="${employer.logo}" "alt="Hình ảnh không tồn tại"/>
                            </div>
                        </div>
                        <div class="grid-container">
                            <div class="grid-item form-group">
                                <label for="file">Upload Img</label>
                                <form:input type="file" path="fileComimg" id="fileComimg"/>
                            </div>
                            <div class="grid-item form-group avatar">
                                <img src="${employer.companyImg}" "alt="Hình ảnh không tồn tại"/>
                            </div>
                        </div>
                    </div>
                    <div class="accept-section">
                        <div class="requireText">
                            *This is required fields
                        </div>
                        <div class="save_cancelButtons">
                            <div class="container-login100-form-btn mr-2">
                                <button class="login100-form-btn cancel">CANCEL</button>
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