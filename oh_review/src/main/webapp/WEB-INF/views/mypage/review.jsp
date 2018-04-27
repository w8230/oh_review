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
  <a href="apply_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">신청한 캠페인</a>
   <a href="apply_ok_list?MEMBER_ID=${login_member.member_id}" class="list-group-item  active">참여중인 캠페인</a>
  <a href="review_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">문의 내역</a>

</div> 
</div>
</div>
<div class="col-md-9 ">
<div class= "content-box well">
<form action="review_reply" method="post" name="frm" id="frm" class="frm">
<input type="hidden" name="EXP_BBS_NUMBER" value="${review.EXP_BBS_NUMBER }">
<input type="hidden" name="EXP_TITLE" value="${review.EXP_TITLE }">
<input type="hidden" name="MEMBER_ID" value="${login_member.member_id }">
<input type="hidden" name="REV_DATE" value="<fmt:formatDate value="${toDay}" pattern="yyyy년 MM월 dd일 HH시 mm분" />"/>
<fieldset>

<legend>리뷰 작성<br></legend><br/>
        <div class="col-md-6 col-md-offset-3">
            <div class="form-group">
            	업체명 : <label style="color:blue">${review.EXP_TITLE }</label><br/> 
            </div>
            
            <div class="form-group">
              <label>*포스팅 URL</label>
                 <input type="text" class="form-control" name="REV_CONTENT" 
                  id="REV_CONTENT" placeholder="예) http://blog.naver.com/포스팅 URL"/>
            </div>
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info" onclick="return send_onclick();">
            <i class="fa fa-check spaceRight" ></i>등록</button>
              <button type="reset" class="btn btn-warning">
              <i class="fa fa-times spaceRight"></i>취소</button><hr>
            </div>
        </div>

</fieldset>
</form>
</div>
 </div>
</div>
</div>
</div>
<hr>
<br/>
</body>
</html>