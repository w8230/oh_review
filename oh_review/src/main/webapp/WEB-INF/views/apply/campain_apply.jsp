<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/bbs_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${login_member.member_id==null }">
<script>
alert("로그인 후 이용하실 수 있습니다.");
location.href="bbs_main";
</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오!리뷰</title>
</head>
<body>
<form action="apply" method="post">
<input type="hidden" name="EXP_BBS_NUMBER" class="form-control" value="${campain_apply.EXP_BBS_NUMBER }">
<input type="hidden" name="MEMBER_ID" class="form-control" value="${login_member.member_id }">
<input type="hidden" name="EXP_TITLE" class="form-control" value="${campain_apply.EXP_TITLE }">
<div class="container">
<p class="text-center">[${campain_apply.EXP_TITLE }] 캠페인 신청서 작성 </p>
<hr>
<div class="card">
	<div class="row">
		<aside class="col-sm-5 border-right">
<article class="gallery-wrap"> 
<div class="img-big-wrap">
  <div> <a href="#"><img style="width:450px; hight:150px;" src="resources/upload_bbs/${campain_apply.EXP_IMG}"></a></div>
</div> <!-- slider-product.// -->
</article> <!-- gallery-wrap .end// -->
		</aside>
		<aside class="col-sm-7">
<article class="card-body-lg">
<dl class="param param-feature">
  <dt>이름</dt>
  <dd><input type="text" name="APPLY_NAME" class="form-control"></dd>
</dl> 
<dl class="param param-feature">
  <dt>휴대폰 번호</dt>
  <dd><input type="tel" name="APPLY_TEL" class="form-control"></dd>
</dl> 
<dl class="param param-feature">
  <dt>관련 포스팅 주소(필수)</dt>
  <dd><input type="text" name="APPLY_BLOG" class="form-control"></dd>
</dl> 
<hr>
	<div class="row">
		<div class="col-sm-5" >
<p><button class="btn btn-lg btn-primary text-uppercase"> 신청하기 </button></p>
		</div>
	</div>
</article>
</aside>
</div>
</div>
</div>
</form>
   <hr>
<%@include file="/WEB-INF/include/bbs_footer.jsp" %>
</body>
</html>