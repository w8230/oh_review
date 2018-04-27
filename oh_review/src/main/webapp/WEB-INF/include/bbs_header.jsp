<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <style type="text/css">@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);* {font-family: 'Nanum Gothic', sans-serif;}</style>
        <meta name="description" content="app landing page template" />
        <meta name="keywords" content="app, landing page, gradient background, image background, video background, template, responsive, bootstrap" />
        <meta name="developer" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      	
		<link rel="icon" type="image/png" href="img/logo.png">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="shortcut icon" href="img/fav.png">
		<meta name="author" content="Colorlib">
		<meta name="description" content="">
		<meta name="keywords" content=""> 
		
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/icons/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/css/owl.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/css/flexslider.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/css/selectize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/css//selectize.bootstrap3.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/css/jquery-ui.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}assets/plugins/css/bootstrap-dropdownhover.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/css/meanmenu.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/color/color-4.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/search.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/review.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/modal.css">
        
		<link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css?family=Poppins:100,300,500" rel="stylesheet">
		
        <script src="assets/plugins/js/jquery-1.11.3.min.js"></script>
        <script src="assets/plugins/js/bootstrap.min.js"></script>
        <script src="assets/plugins/js/meanmenu.js"></script>
        <script src="assets/plugins/js/jquery.ajaxchimp.min.js"></script>
        <script src="assets/plugins/js/wow.min.js"></script>
        <script src="assets/plugins/js/owl.carousel.js"></script>
        <script src="assets/plugins/js/jquery.flexslider-min.js"></script>
        <script src="assets/plugins/js/bootstrap-dropdownhover.min.js"></script>
        <script src="assets/plugins/js/jquery-ui.min.js"></script>
        <script src="assets/plugins/js/validator.min.js"></script>
        <script src="assets/plugins/js/smooth-scroll.js"></script>
        <script src="assets/plugins/js/jquery.fancybox.min.js"></script>
        <script src="assets/plugins/js/standalone/selectize.js"></script>
        <script src="assets/js/init.js"></script>
</head>
<script>
	$(function(){
		$("#findBtn").click(function(){
			$.ajax({
				url : "find_pw",
				type : "POST",
				data : {
					id : $("#id").val(),
					email : $("#email").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});
	})
</script>
<body>

</body>
   <header id="xt-home" class="xt-header">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="xt-language col-md-6 col-sm-6 col-xs-12">
                            <div class="each-nav">

                            </div>
                        </div>
                        
				<c:if test="${login_member.member_id!=null }">
                        <div class="user-nav pull-right col-md-6 col-sm-6 col-xs-12">
                            <ul>
                                <li><a href="member_mypage?member_id=${login_member.member_id}">마이페이지</a></li>
                                <li><a href="logout">로그아웃</a></li>
                                <li><a href="#">${login_member.member_id }님 반갑습니다.</a></li>
                                <!-- admin로 접속시 노출 -->
                                <c:if test="${login_member.member_id eq 'admin' }">
                                <li><a href="member_list?page_num=1">관리자페이지</a></li>
                                </c:if>
                            </ul>
                        </div>
					</c:if>
					
					<!-- 세션에 id값이 없을 시 -->
					<c:if test="${login_member.member_id==null }">
                           <div class="user-nav pull-right col-md-6 col-sm-6 col-xs-12">
                            <ul>
                                <li><a href="bbs_main">홈</a></li>
                                <li><a href="join_step1">회원가입</a></li>
                                <li><a data-toggle="modal" data-target="#loginModal" href="#">로그인</a></li>
                            </ul>
                        </div>
					</c:if>
					
                    </div>
                </div>
            </div>
            
            <div class="main-navigation">
                <nav class="navbar navbar-fixed-top nav-scroll">
                    <div class="container">
                        <div class="row">
                            <div class="navbar-header">
                              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span aria-hidden="true" class="icon"></span>
                              </button>
                              <a class="navbar-brand" href="bbs_main"><img src="assets/images/flogo.png" alt="" class="img-responsive"></a>
                            </div>
                            
                            <div class="collapse navbar-collapse" id="js-navbar-menu">
                                <ul class="nav navbar-nav navbar-right ep-mobile-menu" id="navbar-nav">
                                    <li><a href="bbs_main">홈</a></li>
                                    <li><a href="list?page_num=1">전체</a></li>
                                    <li><a href="bbs_eat">먹거리</a></li>
                                    <li><a href="bbs_fashion">의류</a></li>
                                    <li><a href="bbs_trip">여행/숙박</a></li>
                                    <li><a href="bbs_beauty">뷰티/헬스케어</a></li>
                                    <li><a href="bbs_culture">문화</a></li>
                                    <li><a href="bbs_delivery">배송형</a></li>
                                    <li class="dropdown xt-drop-nav">
                                        <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
                                            고객센터 <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="cts_main">1:1 문의</a></li>
                                            <li><a href="#">자주 묻는 질문</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
<br>
<!-- 검색 -->
<form action="search" method="get">
 <div class="main-color-bg">
<div class="container">
	<div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div id="imaginary_container"> 
                <div class="input-group stylish-input-group">
                    <input type="text" class="form-control"  name="search" placeholder="검색어를 입력해주세요." >
                    <span class="input-group-addon">
                        <button type="button">
                            <span class="fa fa-search"></span>
                        </button>  
                    </span>
                </div>
            </div>
        </div>
	</div>
</div>
</div>
</form>


</header>
        <div class="menu-spacing">
            <div class="container">
                <div class="row">
                    <div class="mobile-menu-area visible-xs visible-sm">
                        <div class="mobile-menu">
                            <nav id="mobile-menu-active">
                            </nav>
                        </div>	
                    </div>
                </div>
            </div>
        </div><br>
	<hr>
	
	
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
				<h1>
				<img src="assets/images/flogo.png" alt="" class="loginimg" >
				</h1>
				  <form action="MemberLoginAction" method="post">
					<input type="text" name="member_id" 
					placeholder="아이디를 입력하세요." data-rule="minlen:4" data-msg="아이디를 4자이상 입력하세요." />
					<input type="password" name="member_password"
					placeholder="비밀번호를 입력하세요." data-rule="minlen:6" data-msg="비밀번호를 6자이상 입력하세요." >
					<input type="submit" name="login" class="login loginmodal-submit" value="로그인">
				  </form>
					
				  <div class="login-help">
					<a href="find_id" onclick="window.open(this.href,'','width=500, height=500, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600'); return false;">FIND ID</a> | 
					<a href="find_pw" onclick="window.open(this.href,'','width=500, height=500, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600'); return false;">FIND PW</a>
				  </div>
				</div>
			</div>
		  </div>
		  
</html>