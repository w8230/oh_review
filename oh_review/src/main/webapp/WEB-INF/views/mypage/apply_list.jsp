<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/mypage_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:useBean id="toDay" class="java.util.Date" />

<!DOCTYPE html>
<html>
<head>
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
  <a href="member_mypage?member_id=${login_member.member_id}" class="list-group-item">내 정보</a>
  <a href="apply_list?MEMBER_ID=${login_member.member_id}"  class="list-group-item active">신청한 캠페인</a>
  <a href="apply_ok_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">참여중인 캠페인</a>
  <a href="review_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">리뷰 관리</a>
 <a href="my_contact_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">문의 내역</a>
</div> 
                    </div>
                </div>
                <div class="col-md-9 ">
                    <div class= "content-box well">
<fieldset>
<legend>신청한 캠페인<br></legend><br/>
									<div class="card-body">
									<i class="fa fa-exclamation-circle"></i> 대기 <i class="fa fa-times-circle" style="color:red;"></i> 반려<br/>
										<table class="table table-bordered table-hover" style="text-align:center;">
											<thead>
												<tr>
													<th scope="col" style="text-align:center;"><i class="fa fa-sort-numeric-asc"></i></th>
													<th scope="col" style="text-align:center;">업체명(상품명)</th>
													<th scope="col" style="text-align:center;">관련 포스팅 URL</th>
													<th scope="col" style="text-align:center;">처리 현황</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${apply_list}" var="apply_list">
												<tr>
													<td>${apply_list.EXP_BBS_NUMBER}</td>
													<td><a href="campain_content_view?EXP_BBS_NUMBER=${apply_list.EXP_BBS_NUMBER}">${apply_list.EXP_TITLE }</a></td>
													<td>${apply_list.APPLY_BLOG }</td>
													<c:if test="${apply_list.APPLY_RESULT eq '대기'}">
													<td><i class="fa fa-exclamation-circle"></i></td>
													</c:if>
													<!-- 반려 상태의 게시글은 삭제가 가능하다. -->
													<c:if test="${apply_list.APPLY_RESULT eq '반려'}">
													<td><a href="apply_delete?APPLY_NUMBER=${apply_list.APPLY_NUMBER}"><i class="fa fa-times-circle" style="color:red;"></i></a></td>
													</c:if>
												</tr>
												</c:forEach>
											</tbody>
										</table>
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