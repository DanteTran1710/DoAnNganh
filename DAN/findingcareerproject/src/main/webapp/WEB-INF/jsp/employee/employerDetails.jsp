<%-- 
    Document   : employerDetails
    Created on : Oct 14, 2021, 9:21:08 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<c:if test="${rateMsg != null}">
    <div id="toast">
        <div id="toast_main">
            <div class="toast_icon">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </div>
            <div class="toast_body">
                <h3 class="toast_title">THÔNG BÁO!</h3>
                <div class="toast_message">${rateMsg}</div>
            </div>
            <div class="toast_close" onclick="removeToast();">
                <i class="fa fa-times" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</c:if>
<section class="companydetails employer">
    <div class="container jobtitle">
        <img src="${e.logo}"/>
        <label class="job-tit">${e.companyName}</label>
        <div class="star-full" style="width: 400px" >
            <c:forEach begin="1" end="${avgrate[1]}" >
                <i class="fa fa-star star-rated" aria-hidden="true"
                   style=" color:#ffcc00; font-size: 40px;" ></i>
            </c:forEach>
            <c:forEach begin="${avgrate[1]+1}" end="5" >
                <i class="fa fa-star star-rated" aria-hidden="true"
                   style=" color:#ccc; font-size: 40px;" ></i>
            </c:forEach>
            <div class="button-like">
                <c:if test="${likebyE == null}">
                    <div id="like-section"
                         class="like" onclick="addCoLike(${e.idEmployer})">
                        <i class="fa fa-heart" aria-hidden="true"></i>&nbsp;LIKE
                    </div>
                </c:if>
                <c:if test="${likebyE != null}">
                    <div id="like-section" style="background-color: #87817f; color: #000"
                         class="like">
                        <i class="fa fa-heart" aria-hidden="true"></i>&nbsp;LIKE
                    </div>
                </c:if>
            </div>
        </div>
    </div>
    <div class="container">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#companyinfo">COMPANY INFO</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#jobsbycompany">JOBS BY COMPANY</a>
            </li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <div id="companyinfo" class="container tab-pane active">
                <div class="companyinfo">
                    <div class="wrap-infor" id="description" style="width: 100%">
                        <div class="section">
                            <div class="imgs mt-2">
                                <img style="width: 600px; height: 380px;" src="${e.companyImg}"
                                     "alt="Hình ảnh không tồn tại"/>
                            </div>
                        </div>
                        <div class="section">
                            <label>COMPANY DESCRIPTION</label>
                            <div>${e.description}</div>
                        </div>
                        <div class="section">
                            <label>OUR ORIENTATION</label>
                            <div><i class="fa fa-circle" aria-hidden="true"></i>&nbsp;${e.orientation}</div>
                        </div>
                        <div class="section">
                            <label>ADDRESS</label>
                            <div><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;${e.address}</div>
                        </div>
                        <div class="section">
                            <label>CONTACT EMAIL</label>
                            <div><i class="fa fa-envelope-o" aria-hidden="true"></i>&nbsp;${e.email}</div>
                        </div>
                        <div class="section">
                            <label>CONTACT NUMBER</label>
                            <div><i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;${e.phoneNumber}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="jobsbycompany" class="job container tab-pane fade">
                <div class="row jobsbycompany" id="job-section">
                    <c:forEach var="r" items="${jobs}">
                        <div class="jobbyc col-md-12 col-lg-6 d-flex align-items-stretch mb-5 mb-lg-0 pb-4">
                            <div class="icon-box">
                                <div class="box2">
                                    <h4 class="title"><a href="<c:url value="/recruitment/${r.idRecruitment}"/>">${r.title}</a></h4>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div>
                    <a class="load-more" href="#" onclick="getRecruitments(${e.idEmployer})"><h6>LOAD MORE >></h6></a>
                </div>
            </div>
        </div>
    </div>
    <div class="container p-3 comment">
        <div class="rating-star">
            <label class="job-tit">RATING STAR </label>
            <c:if test="${rate == null}">
                <div id="rating-area">
                    <c:forEach begin="1" end="5" var="step">
                        <i class="fa fa-star starr" aria-hidden="true" id="star-${step}"
                           data-idcompany="${e.idEmployer}"
                           style="cursor: pointer; color:#ccc; font-size: 40px;" data-index="${step}"></i>
                    </c:forEach>
                </div>
            </c:if>
            <c:if test="${rate.star > 0}">
                <div id="rating-area">
                    <c:forEach begin="1" end="${rate.star}" var="step">
                        <i class="fa fa-star star-rated" aria-hidden="true" id="star-${step}"
                           data-idcompany="${e.idEmployer}"
                           style="cursor: pointer; color:#ff6347; font-size: 40px;" data-index="${step}"></i>
                    </c:forEach>
                    <c:forEach begin="${rate.star+1}" end="5" var="step">
                        <i class="fa fa-star star-rated" aria-hidden="true" id="star-${step}"
                           data-idcompany="${e.idEmployer}"
                           style="cursor: pointer; color:#ccc; font-size: 40px;" data-index="${step}"></i>
                    </c:forEach>
                </div>
            </c:if>
        </div>
        <div class="input-comment">
            <form>
                <div class="form-group">
                    <textarea class="form-control" id="cmtId" placeholder="comment here"></textarea>
                </div>
                <div class="form-group">
                    <button type="button"
                            class="btn btn-danger " style="float: right" onclick="addComment(${e.idEmployer})">SUBMIT</button>
                </div>
            </form>
        </div>
        <c:if test="${counter > 0}">    
            <div class="cmt-des">
                <div>
                    <i class="fa fa-user-circle-o" aria-hidden="true">
                    </i>
                    <c:if test="${counter == 1}">
                        &nbsp;&nbsp;${counter}&nbsp;COMMENT
                    </c:if>
                    <c:if test="${counter > 1}">
                        &nbsp;&nbsp;${counter}&nbsp;COMMENTS
                    </c:if>    
                </div>
            </div>
            <div id="cmt-area">
                <c:forEach items="${comments}" var="c">
                    <div id="cmt" class="comment-section">
                        <img src="${c.employee.avatarUrl}"/>
                        <div>
                            <label class="job-tit" style="font-size: 20px;">${c.content}</label>
                            <p class="date-comment">${c.createDate}</p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:if>
        <c:if test="${counter == 0}">    
            <div class="empty-comment">
                <i class="fa fa-times fa-5x pt-3" aria-hidden="true"></i>
                <p>
                    We have not found any comments for this company at the moment
                </p>
            </div>
            <div id="cmt-area">

            </div>
        </c:if>
        <!-- CLASSIFY THE PAGINATION BY THE CONDITIONS -->
        <nav class="pagi">
            <ul class="pagination pagination-lg justify-content-center">
                <c:forEach begin="1" end="${Math.ceil(counter/2)}" step="1" var="i">
                    <li class="page-item">
                        <a class="page-link"
                           href="<c:url value="/employee/employer-details/${e.idEmployer}/"/>?page=${i}">${i}</a>
                    </li>
                </c:forEach>
            </ul>
        </nav>    
    </div>
</section>

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

<script>
    window.onload = function () {
        let dates = document.querySelectorAll(".date-comment");
        for (let i = 0; i < dates.length; i++) {
            let d = dates[i];
            d.innerText = moment(d.innerText).fromNow();
        }
    }
</script>