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
        <section class="xt-feature-product">
            <div class="container">
                <div class="row section-separator">
                    <div class="section-title">
                        <h2>진행중인 캠페인</h2>
                        <a href="list?page_num=1">전체</a>  |  <a href="bbs_eat">먹거리</a>  |  <a href="bbs_fashion">의류</a>  |  <a href="bbs_trip">여행/숙박</a>  |  
                        <a href="bbs_beauty">뷰티/헬스케어</a>  |  <a href="bbs_culture">문화/생활</a>  |  <a href="bbs_delivery">배송형</a>
                        <span class="xt-title-bg"></span>
                    </div>
                    <div class="xt-each-feature">
	<c:forEach items="${list}" var="CampainBean">
                        <div class="col-md-4 col-sm-4">
                            <div class="xt-feature">
                                <div class="product-img">
                                    <img style="height:235px;"src="resources/upload_bbs/${CampainBean.EXP_IMG}" alt="" class="img-responsive">
		                             <c:if test="${CampainBean.EXP_RECRUIT_MEM le CampainBean.EXP_APPLY_MEM}">
                                    <span class="product-tag xt-uppercase" style="background-color:red;">HOT</span>
                                    </c:if>
                                    <c:if test="${CampainBean.EXP_RECRUIT_MEM gt CampainBean.EXP_APPLY_MEM}">
                                    <span class="product-tag xt-uppercase">신청가능</span>
                                    </c:if>
                                </div>
                                <div class="product-info">
                                    <div class="product-title">
                                        <span class="category xt-uppercase">${CampainBean.EXP_ADD_CITY }/${CampainBean.EXP_ADD_DETAIL }</span>
                                        <span class="name xt-semibold">${CampainBean.EXP_TITLE }</span>
                                    </div>
                                    <div class="price-tag pull-right">
                                        <span class="old-price">${CampainBean.EXP_RECUIT_DATE }</span>
                                        <span class="new-price xt-semibold">신청 ${CampainBean.EXP_APPLY_MEM } / 모집 ${CampainBean.EXP_RECRUIT_MEM }</span>
                                    </div>
                                    <div class="xt-featured-caption">
                                        <div class="product-title">
                                            <span class="category xt-uppercase">${CampainBean.EXP_ADD_CITY }/${CampainBean.EXP_ADD_DETAIL }</span>
                                            <span class="name xt-semibold">${CampainBean.EXP_TITLE }</span>
                                        </div>
                                        <div class="price-tag pull-right">
                                            <span class="old-price">${CampainBean.EXP_RECUIT_DATE }</span>
                                            <span class="new-price xt-semibold">신청 ${CampainBean.EXP_APPLY_MEM } / 모집 ${CampainBean.EXP_RECRUIT_MEM }</span>
                                        </div>
                                        <div class="add-cart">
                                        
                                            <a href="campain_content_view?EXP_BBS_NUMBER=${CampainBean.EXP_BBS_NUMBER}"  class="btn btn-fill">신청하기</a>
                                            <ul class="reaction">
                                                <li><a href="campain_content_view?EXP_BBS_NUMBER=${CampainBean.EXP_BBS_NUMBER}"><i class="fa fa-search"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        			</c:forEach>
                    </div>
                </div>
            </div>
        </section>

<div class="section-title">
  <nav style="aligin:center;">
  <ul class="pagination">
  

	
	<c:forEach var="list" begin="1" end="${total_page}">
    <li>	
	<a href="list?page_num=${list}">${list}</a>
	</li>
    </c:forEach>


  </ul>
</nav>
</div>
<hr>
 <%@include file="/WEB-INF/include/bbs_footer.jsp" %>
</body>
</html>