<%-- 
    Document   : footer
    Created on : Aug 16, 2021, 10:01:40 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<footer id="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row" style="justify-content: space-between">

                <div class="col-lg-3 col-md-6 footer-info">
                    <h3>JOB FINDING</h3>
                    <p>
                        Pham Van Hai Street <br>
                        Tan Binh District, HCMC<br><br>
                        <strong>Phone:</strong>+84 984381617<br>
                        <strong>Email:</strong> tanthah.17@gmail.com<br>
                    </p>
                    <div class="social-links mt-3">
                        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                    </div>
                </div>

                <div class="col-lg-2 col-md-6 footer-links">
                    <h4>COMPANY</h4>
                    <ul>
                        <li><i class="fa fa-chevron-right"></i> <a href="<c:url value="/" />">  Home</a></li>

                        <security:authorize access="hasRole('ROLE_EMPLOYEE')"> 
                            <li>
                                <i class="fa fa-chevron-right"></i> 
                                <a href="<c:url value="/employee/find-employers"/>">Employers</a>
                            </li>
                        </security:authorize>
                        <security:authorize access="hasRole('ROLE_EMPLOYER')">
                            <li> 
                                <i class="fa fa-chevron-right"></i>
                                <a href="<c:url value="/employer/find-employees"/>">Employees</a>
                            </li>
                            <li>
                                <i class="fa fa-chevron-right"></i>
                                <a href="<c:url value="/employer/recruitment/new"/>">More recruitments</a>
                            </li>
                        </security:authorize>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong><span>FINDING JOB</span></strong>. All Rights Reserved
        </div>
    </div>
</footer>
