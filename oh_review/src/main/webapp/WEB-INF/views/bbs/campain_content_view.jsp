<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/bbs_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오!리뷰</title>
</head>
<body>
<div class="container">
<p class="text-center">마감 날짜 : ${campain_content_view.EXP_RECUIT_DATE} 까지</p>
<hr>
<div class="card">
	<div class="row">
		<aside class="col-sm-5 border-right">
<article class="gallery-wrap"> 
<div class="img-big-wrap">
  <div> <a href="#"><img style="width:450px; hight:150px;" src="resources/upload_bbs/${campain_content_view.EXP_IMG}"></a></div>
</div> <!-- slider-product.// -->
</article> <!-- gallery-wrap .end// -->
		</aside>
		<aside class="col-sm-7">
<article class="card-body-lg">
	<h3 class="title mb-3">${campain_content_view.EXP_TITLE }</h3><hr>
<p>
	<span>카테고리 : ${campain_content_view.EXP_CATEGORIE }/${campain_content_view.EXP_CATEGORIE_DETAIL }</span> 
</p> <!-- price-detail-wrap .// -->
<dl class="param param-feature">
  <dt>지역</dt>
  <dd>${campain_content_view.EXP_ADD_CITY }/${campain_content_view.EXP_ADD_DETAIL }</dd>
</dl> 
<dl class="item-property">
  <dt>모집 내용</dt>
  <dd>${campain_content_view.CONTENT_EXPERIENCE }</dd>
</dl>
<dl class="param param-feature">
  <dt>업체 정보</dt>
  <dd>${campain_content_view.CONTENT_ENTERPRICE }</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>신청 ${campain_content_view.EXP_APPLY_MEM }명 / 모집 ${campain_content_view.EXP_RECRUIT_MEM }명</dt>
</dl>  <!-- item-property-hor .// -->
<hr>
	<div class="row">
		<div class="col-sm-5">
<p><a href="campain_apply?EXP_BBS_NUMBER=${campain_content_view.EXP_BBS_NUMBER}" class="btn btn-lg btn-primary text-uppercase"> 캠페인 체험 신청하기 </a></p>
		</div>
	</div>
</article>
</aside>
</div>
</div>
</div>
<hr>
<div class="container">
<div class="row">
<div class="col-sm-12">
<h3>리뷰어 포스팅</h3><br/>
</div>
</div>

<div class="row">
<c:forEach items="${reply_list}" var="reply">
<div class="col-sm-1">
<div class="thumbnail">
<img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
</div>
</div>
<div class="col-sm-5">
<div class="panel panel-default">
<div class="panel-heading">
<strong>작성자 : ${reply.MEMBER_ID}</strong> 
<span class="text-muted"> / 등록일 : ${reply.REV_DATE}</span>
</div>
<div class="panel-body">
포스팅 URL : ${reply.REV_CONTENT}
</div>
</div>
</div>
</c:forEach>
</div>
</div>
   <hr>
<%@include file="/WEB-INF/include/bbs_footer.jsp" %>
</body>
</html>