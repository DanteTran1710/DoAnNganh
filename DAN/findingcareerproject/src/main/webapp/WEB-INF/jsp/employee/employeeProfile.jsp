<%-- 
    Document   : employeeProfile
    Created on : Aug 31, 2021, 11:50:30 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:url value="/employee/employee-profile" var="action" />

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
                <legend class="w-auto p-2">PERSONAL INFORMATION</legend>  
                <form:form method="post" action="${action}" modelAttribute="employee"
                           enctype="multipart/form-data">
                    <div class="details-form">
                        <div class="personal-section">
                            <div class="grid-item form-group">
                                <label for="phone">Phone number</label>
                                <form:input type="text" path="phoneNumber" id="phoneNumber" placeholder="Phone number"/>
                            </div>
                            <div class="grid-item form-group">
                                <label for="dob">Day of birth</label>
                                <fmt:formatDate value="${employee.dob}" var="date" pattern="dd/MM/yyyy" />
                                <form:input value="${date}" path="dob" id="dob"/>
                            </div>
                            <div class="grid-item form-group">
                                <label for="dob" class="w-auto">Sex:</label>&nbsp;
                                Male&nbsp;<form:radiobutton path="sex" value="0" class="w-auto ml-2"/>&nbsp;
                                Female&nbsp;<form:radiobutton path="sex" value="1" class="w-auto ml-2"/>&nbsp;
                            </div>
                            <div class="grid-item form-group">
                                <label for="nationality">Nationality</label>
                                <form:select path="nationality" id="nationality" class="custom-select">
                                    <form:option value="Local VietNamese">Local VietNamese</form:option>
                                    <form:option value="Foreigner">Foreigner</form:option>
                                </form:select>
                            </div>
                            <div class="grid-item form-group">
                                <label for="address">Address</label>
                                <form:input type="text" path="address" id="address" placeholder="Address"/>
                            </div>
                            <div class="grid-container">
                                <div class="grid-item form-group">
                                    <label for="file">Avatar User</label>
                                    <form:input type="file" path="fileAva" id="fileAva"/>
                                </div>
                                <div class="grid-item form-group avatar">
                                    <img src="${employee.avatarUrl}"/>
                                </div>
                            </div>
                        </div>
                        <div class="experience-section">
                            <label id="title">WORKING HISTORY</label>
                            <div class="grid-item form-group">
                                <label for="position">Position</label>
                                <form:input type="position" path="position" id="position" placeholder="position"/>
                                <label for="company">Company</label>
                                <form:input type="company" path="company" id="company" placeholder="company"/>
                                <label for="currentjob" class="w-auto">Current Job</label>
                                <form:checkbox path="currentjob" value="1" id="action" class="w-auto"/>
                            </div>
                        </div>
                        <div class="education-section">
                            <label id="title">EDUCATION</label>
                            <div class="grid-item form-group">
                                <label for="subject">Subject</label>
                                <form:input type="subject" path="subject" id="subject" placeholder="subject"/>
                                <label for="school">School</label>
                                <form:input type="school" path="school" id="school" placeholder="school"/>
                                <label for="qualification">Qualification</label>
                                <form:select path="qualification" id="qualification" class="custom-select">
                                    <form:option value="Đại Học">Đại Học</form:option>
                                    <form:option value="Trung cấp">Trung cấp</form:option>
                                    <form:option value="Cao đẳng">Cao đẳng</form:option>
                                    <form:option value="Cử nhân">Cử nhân</form:option>
                                    <form:option value="Thạc sĩ">Thạc sĩ</form:option>
                                </form:select>
                            </div>
                        </div>
                        <div class="skill-section">
                            <label id="title">SKILLS</label>
                            <div class="grid-item form-group">
                                <label for="skill">Language Used</label>
                                <form:input type="skill" path="skill" id="skill" placeholder="skill"/>
                            </div>
                        </div>
                        <div class="language-section">
                            <label id="title">LANGUAGES</label>
                            <div class="grid-item form-group">
                                <label for="language">Language Used</label>
                                <form:select path="language" id="language" class="custom-select">
                                    <form:option value="English">English</form:option>
                                    <form:option value="Vietnamese">Vietnamese</form:option>
                                    <form:option value="Chinese">Chinese</form:option>
                                    <form:option value="French">French</form:option>
                                    <form:option value="Japanese">Japanese</form:option>
                                    <form:option value="Taiwanese">Taiwanese</form:option>
                                    <form:option value="Other">Other</form:option>
                                </form:select>
                            </div>
                        </div>
                        <div class="preferences-section">
                            <label id="title">WORKING PREFERENCE</label>
                            <div class="grid-item form-group">
                                <label for="salaryOffer">Salary offer ($ per month)</label>
                                <form:select path="salaryOffer" id="salaryOffer" class="custom-select">
                                    <form:option value="1"><= $500</form:option>
                                    <form:option value="2">$500 - $1000</form:option>
                                    <form:option value="3">$1000 - $2000</form:option>
                                    <form:option value="4">>= $2000</form:option>
                                    <form:option value="0">Thương lượng</form:option>
                                </form:select>
                                <label for="positionOffer">Position job offer</label>
                                <form:select path="positionOffer" id="positionOffer" class="custom-select">
                                    <form:option value="Nhân viên">Nhân viên</form:option>
                                    <form:option value="Trưởng phòng">Trưởng phòng</form:option>
                                    <form:option value="Giám đốc và cao cấp hơn">Giám đốc và cao cấp hơn</form:option>
                                </form:select>
                                <label for="file">Avatar your own CV</label>
                                <form:input type="file" path="fileCV" id="fileCV"/>   
                            </div>
                        </div>
                    </div>
                    <div class="accept-section">
                        <div class="requireText">
                            *This is required fields
                        </div>
                        <div class="save_cancelButtons">
                            <div class="container-login100-form-btn mr-2">
                                <button type="submit" class="login100-form-btn cancel">CANCEL</button>
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