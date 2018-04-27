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
                        <h2>먹거리</h2>
                        <a href="bbs_eat">전체</a>  |  <a href="search?search=일반음식점">일반음식점</a>  |  <a href="search?search=레스토랑">레스토랑</a>  |  <a href="search?search=술집">술집</a>
                        <span class="xt-title-bg"></span>
                        <hr>
                    </div>
                    <div class="xt-each-feature">
	<c:forEach items="${bbs_eat}" var="CampainBean">
                        <div class="col-md-4 col-sm-4">
                            <div class="xt-feature">
                                <div class="product-img">
                                    <img style="height:235px;"src="resources/upload_bbs/${CampainBean.EXP_IMG}" alt="" class="img-responsive">
                                    <span class="product-tag xt-uppercase">신청가능</span>
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
  

   <hr>
<%@include file="/WEB-INF/include/bbs_footer.jsp" %>
</body>
</html>