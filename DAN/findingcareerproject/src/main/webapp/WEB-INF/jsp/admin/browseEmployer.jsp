<%-- 
    Document   : browseEmployer
    Created on : Dec 25, 2021, 1:27:01 PM
    Author     : hp
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="row">
    <div class="col-md-12">
        <div class="card  card-tasks">
            <div class="card-header ">
                <h4 class="card-title">BROWSE NEW EMPLOYER</h4>
            </div>
            <div class="card-body ">
                <div class="table-full-width">
                    <table class="table">
                        <tbody>
                            <c:forEach var="e" items="${employer}">
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                                        </div>
                                    </td>
                                    <td>${e[1]}</td>
                                    <td>${e[2]}</td>
                                    <td>${e[3]}</td>
                                    <td>${e[4]}</td>
                                    <td class="td-actions text-right">
                                        <c:if test="${e[8] == false}">
                                            <button onclick="browseEmployer(1,${e[0]})" type="submit" rel="tooltip" title="Accept" class="btn btn-info btn-simple btn-link">
                                                <i class="fa fa-check"></i>
                                            </button>
                                        </c:if>
                                        <button onclick="browseEmployer(0,${e[0]})" type="submit" rel="tooltip" title="Decline" class="btn btn-danger btn-simple btn-link">
                                            <i class="fa fa-times"></i>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- CLASSIFY THE PAGINATION BY THE CONDITIONS -->
                <nav class="pagi">
                    <ul class="pagination pagination-lg justify-content-center">
                        <c:forEach begin="1" end="${Math.ceil(counter/4)}" step="1" var="i">
                            <li class="page-item">
                                <a class="page-link" href="<c:url value="/admin/browse"/>?page=${i}">${i}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>