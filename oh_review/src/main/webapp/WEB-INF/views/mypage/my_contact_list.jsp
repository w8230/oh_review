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
  <a href="apply_list?MEMBER_ID=${login_member.member_id}"  class="list-group-item">신청한 캠페인</a>
  <a href="apply_ok_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">참여중인 캠페인</a>
  <a href="review_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">리뷰 관리</a>
 <a href="my_contact_list?MEMBER_ID=${login_member.member_id}" class="list-group-item active">문의 내역</a>
</div> 
                    </div>
                </div>
                <div class="col-md-9 ">
                    <div class= "content-box well">
<fieldset>
<legend>문의 내역<br></legend><br/>
									<div class="card-body">
										<table class="table table-striped table-bordered table-hover" style="text-align:center;">
											<thead>
												<tr>
													<th scope="col" style="text-align:center;"><i class="fa fa-sort-numeric-asc"></i></th>
													<th scope="col" style="text-align:center;">분류</th>
													<th scope="col" style="text-align:center;">제목</th>
													<th scope="col" style="text-align:center;">등록일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${my_contact_list}" var="my_contact_list">
												<tr>
													<td>${my_contact_list.CTS_NUMBER}</td>
													<td>${my_contact_list.CTS_CATEGORIE }</td>
													<td><a href="cts_view?CTS_NUMBER=${my_contact_list.CTS_NUMBER}">${my_contact_list.CTS_TITLE }</a></td>
													<td>${my_contact_list.CTS_WRITE_DATE }</td>
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