<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/mypage_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:useBean id="toDay" class="java.util.Date" />
<c:if test="${login_member.member_id ne cts_view.MEMBER_ID && login_member.member_id ne 'admin'}">
<script>
alert("문의글은 본인만 확인이 가능합니다.");
location.href="cts_list?page_num=1";
</script>
</c:if>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cts_view.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>오!리뷰</title>
</head>
<body>
<div class="site-panel"style="margin-top:110px">
<div class="container">
<div class="row">
<div class="col-md-3 well">
<div class= "sidebar">
<div class="list-group">
  <a href="cts_main" class="list-group-item">1:1 문의</a>
  <a href="cts_list?page_num=1" class="list-group-item active">문의 게시판</a>
</div> 
</div>
</div>

<div class="col-md-9 ">
<div class= "content-box well">
<fieldset>
<legend>1:1 문의<br></legend><br/>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="post-content">
              <div class="post-container">
                <img src="assets/images/member.png" alt="user" class="profile-photo-md pull-left">
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link">아이디 : ${cts_view.MEMBER_ID }</a></h5>
                    <p class="text-muted">작성일 : ${cts_view.CTS_WRITE_DATE }</p>
                  </div>

                  <div class="line-divider"></div>
                  
                  <div class="post-text">
                  <hr>
                  <p> 분류 : ${cts_view.CTS_CATEGORIE }</p>
                    <p>내용 : ${cts_view.CTS_CONTENT }</p>
                    <hr>
                  </div>
                  <c:forEach items="${cts_reply_list}" var="cts_reply">
                  <p class="text-muted">${cts_reply.CTS_RP_DATE }에 작성됨.</p>
                  <div class="post-comment" style="border:1px;">
                    <img src="assets/images/admin.png" alt="" class="profile-photo-sm">
                    <p class="form-control">${cts_reply.CTS_RP_CONTENT } </p>
                  </div>
                    <hr>
                  </c:forEach>
                    
                    <c:if test="${login_member.member_id eq 'admin'}">
                    <form action="cts_reply_action" method="post">
                  <div class="post-comment">
                    <img src="assets/images/admin.png" alt="" class="profile-photo-sm">
                    <input type="hidden" name="CTS_NUMBER" value="${cts_view.CTS_NUMBER }">
                    <input type="hidden" name="CTS_RP_DATE" value="<fmt:formatDate value="${toDay}" pattern="yyyy년 MM월 dd일 HH시 mm분" />"/>
                    <input type="text" name="CTS_RP_CONTENT" class="form-control" placeholder="댓글 내용을 입력하세요.">
                    <input type="submit" class="btn btn-primary" value="입력">
                  </div>
                  </form>
                  </c:if>
                </div>
              </div>
            </div>
        </div>
    </div>
</div>
</fieldset>

</div>
 </div>
</div>
</div>
</div>
<hr>
<br/>
</body>
</html>