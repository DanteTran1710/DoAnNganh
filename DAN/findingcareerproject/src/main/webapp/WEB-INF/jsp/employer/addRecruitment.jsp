<%-- 
    Document   : addRecruitment
    Created on : Oct 2, 2021, 11:34:47 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/employer/recruitment/new" var="action" />

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
        <div class="login100-form validate-form">
            <fieldset class="border p-2">
                <legend class="w-auto p-2">RECRUITMENT DETAILS</legend>  
                
                <form:form method="post" action="${action}" modelAttribute="r">
                    <div class="personal-form">
                        <div class="grid-item form-group">
                            <label for="title">Title</label>
                            <form:input type="text" path="title" id="title-company-job"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="welfare">Welfare</label>
                            <form:textarea type="textarea" path="welfare" id="welfare"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="description">Description Job</label>
                            <form:textarea type="textarea" path="description" id=""/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="requirement">Requirement Job</label>
                            <form:textarea type="textarea" path="requirement" id="requirement"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="experience">Experience</label>
                            <form:textarea type="textarea" path="experience" id="experience"/>
                        </div>
                        <div class="grid-item form-group">
                            <label for="salary" class="w-auto">Salary offer (By $)</label>
                            <form:checkbox path="salary" value="0" id="action" onclick="show()"/> Thỏa thuận lương
                            <form:input type="text" path="salary" id="salary-company-job"/>
                        </div>
                       <div class="grid-item form-group">
                            <label for="salary" class="w-auto">Require job now</label>
                            <form:checkbox path="now" value="1"/>  
                        </div>
                        <div class="grid-item form-group">
                            <label for="position">Position job</label>
                            <form:select path="position" id="position" class="custom-select">
                                <form:option value="Thực tập sinh/Sinh viên">Thực tập sinh/Sinh viên</form:option>
                                <form:option value="Mới tốt nghiệp">Mới tốt nghiệp</form:option>
                                <form:option value="Nhân viên">Nhân viên</form:option>
                                <form:option value="Trưởng phòng">Trưởng phòng</form:option>
                                <form:option value="Giám đốc và cao cấp hơn">Giám đốc và cao cấp hơn</form:option>
                            </form:select>
                        </div>
                        <div class="grid-item form-group">
                            <label for="category">Position job</label>
                            <form:select path="categoryJob.idCategory" id="categoryJob" class="custom-select">
                                <c:forEach items="${cate}" var="i">
                                    <form:option value="${i.idCategory}">${i.nameJob}</form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                        
                    </div>
                    <div class="accept-section">
                        <div class="requireText">
                            *This is required fields
                        </div>
                        <div class="save_cancelButtons">
                            <div class="container-login100-form-btn mr-2">
                                <button type="reset" class="login100-form-btn cancel">CANCEL</button>
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

<script>
function show(){
    var textSalary = document.getElementById("salary-company-job");
    var checkbox = document.getElementById("action");
    if(checkbox.checked)
       textSalary.disabled = true;  
    else
       textSalary.disabled = false;  
}
</script>
