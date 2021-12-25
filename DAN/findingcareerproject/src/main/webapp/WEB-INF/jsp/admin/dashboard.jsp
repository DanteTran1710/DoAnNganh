<%-- 
    Document   : dashboard
    Created on : Aug 22, 2021, 10:09:53 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!DOCTYPE html>
<div class="content">
    <div class="container-fluid">
        <div class="filter input-group mb-3">
            <nav class="nav-menu d-none d-lg-block">
                <ul>
                    <!-- THE LEVEL FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/admin"/>">STATISTIC BY SEASONS</a>
                        <ul class="scrolltable">                     
                            <li><a href=""><input type="radio" name="rdbM" value="spring" />&nbsp;&nbsp;SPRING</a></li>
                            <li><a href=""><input type="radio" name="rbdM" value="summer"/>&nbsp;&nbsp;SUMMER</a></li>
                            <li><a href=""><input type="radio" name="rbdM" value="fall"/>&nbsp;&nbsp;FALL</a></li>
                            <li><a href=""><input type="radio" name="rbdM" value="winter" />&nbsp;&nbsp;WINTER</a></li>
                        </ul>
                    </li>
                    <!-- THE SALARY FILTER OF CONDITIONS -->
                    <li class="drop-down"><a href="<c:url value="/admin"/>">STATISTIC BY YEAR</a>
                        <ul class="scrolltable">                     
                            <li><a href=""><input type="radio" name="rdbY" value="2015" />&nbsp;&nbsp;2015</a></li>
                            <li><a href=""><input type="radio" name="rdbY" value="2016" />&nbsp;&nbsp;2016</a></li>
                            <li><a href=""><input type="radio" name="rdbY" value="2017" />&nbsp;&nbsp;2017</a></li>
                            <li><a href=""><input type="radio" name="rdbY" value="2018" />&nbsp;&nbsp;2018</a></li>
                            <li><a href=""><input type="radio" name="rdbY" value="2019" />&nbsp;&nbsp;2019</a></li>
                            <li><a href=""><input type="radio" name="rdbY" value="2020" />&nbsp;&nbsp;2020</a></li>
                            <li><a href=""><input type="radio" name="rdbY" value="2021" />&nbsp;&nbsp;2021</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>

        </div>
        <div class=" input-group mb-3">
                <button type="button"
                        class="btn btn-danger " onclick="sendCondition()">SUBMIT
                </button>
        </div>

        <div class="row">
            <div class="col-md-5">
                <div class="card" style="height: 600px; width: 500px">
                    <div class="card-header ">
                        <h4 class="card-title">CV APPLICATION CHART BY CHART</h4>
                    </div>
                    <div class="card-body ">
                        <canvas id="doughnutchart"></canvas>  
                    </div>
                </div>
            </div>

            <div class="col-md-7">
                <div class="card " style="height: 600px; width: 700px">
                    <div class="card-header ">
                        <h4 class="card-title">CV APPLICATION CHART BY TABLE</h4>
                    </div>
                    <div class="card-body ">
                        <div class="ct-chart">
                            <table id="chartTable" class="table">
                                <tr>
                                    <th>Category ID</th>
                                    <th>Category Job</th>
                                    <th>Amount</th>
                                </tr>
                                <c:forEach items="${CvStatics}" var="i">
                                    <tr>
                                        <td>${i[1]}</td>
                                        <td>${i[2]}</td>
                                        <td>${i[3]}</td>                                        
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>      