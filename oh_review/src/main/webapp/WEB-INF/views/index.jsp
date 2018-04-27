<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/WEB-INF/include/header.jsp" %>
<!DOCTYPE html">
<html>
<head>
<title>오!리뷰</title>
	</head>
	<body>
		<header class="default-header">
			<div class="container-fluid">
				<div class="header-wrap">
					<div class="header-top d-flex justify-content-between align-items-center">
						<div class="logo">
							<a href="index.jsp"><img src="img/logo.png" alt=""></a>
						</div>
						<div class="main-menubar d-flex align-items-center">
							<nav class="hide">
								<a href="bbs_main">캠페인</a>
								<a href="join">팀원 소개</a>
<!-- 								<a data-toggle="modal" data-target="#loginModal" href="#">PPT</a>
								<a data-toggle="modal" data-target="#MemberJoinModal" href="#">개발환경</a> -->
								<a href="test" >PPT</a>
<!-- 								<a href="#">고객센터</a> -->
							</nav>
							<div class="menu-bar"><span class="lnr lnr-menu"></span></div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- End Header Area -->
		<!-- Start Banner Area -->
		<section class="banner-area relative">
			<div class="container">
				<div class="row fullscreen align-items-center justify-content-center">
					<div class="banner-left col-lg-6">
						<img class="d-flex mx-auto img-fluid" src="img/header-img.png" alt="">
					</div>
					<div class="col-lg-6">
						<div class="story-content">
							<h6 class="text-uppercase">개이득 캠페인을 체험하고 싶다고?</h6>
							<h1> <span class="sp-1">간단하고 편리하게</span><br>
							<span class="sp-2">체험단에 신청해봐!</span></h1>
							<a href="bbs_main" class="genric-btn primary circle arrow">진행중인 캠페인<span class="lnr lnr-arrow-right"></span></a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Banner Area -->
		<!-- Start Video Area -->
		<section class="video-area pt-40 pb-40">
			<div class="overlay overlay-bg"></div>
			<div class="container">
				<div class="video-content">
					<a href="http://www.youtube.com/watch?v=0O2aH4XLbto" class="play-btn"><img src="img/play-btn.png" alt=""></a>
					<div class="video-desc">
						<h3 class="h2 text-white text-uppercase">오!리뷰 홍보영상</h3>
						<h4 class="text-white">버튼을 누르시면 youtube로 이동합니다.</h4>
					</div>
				</div>
			</div>
		</section>
		<!-- End Video Area -->
		<!-- Start about Area -->
		<section class="about-area pt-100 pb-100">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="story-content">
							<h2>오늘의 <br>
							<span>추천 캠페인</span></h2>
							<br>
							<a href="#" class="genric-btn primary-border circle arrow">바로가기
							<span class="lnr lnr-arrow-right"></span></a>
						</div>
					</div>
					<div class="col-lg-6">
						<img class="img-fluid d-flex mx-auto" src="img/about1.png" alt="">
					</div>
				</div>
			</div>
		</section>
		<!-- End Team Force Area -->
				<section class="contact-area pt-100 pb-100 relative">
			<div class="overlay overlay-bg"></div>
			<div class="container">
				<div class="row justify-content-center text-center">
					<div class="single-contact col-lg-6 col-md-8">
						<h2 class="text-white"><span>제휴 신청</span></h2>
						<p class="text-white">
							오!리뷰와 함께 성장해나갈 업체를 모집합니다.
						</p>
					</div>
				</div>
				<form id="myForm" action="mail.php" method="post" class="contact-form">
					<div class="row justify-content-center">
						
						<div class="col-lg-5">
							<input name="fname" placeholder="전화번호를 입력하세요." onfocus="this.placeholder = ''" onblur="this.placeholder = ''" class="common-input mt-20" required="" type="text">
						</div>
						<div class="col-lg-5">
							<input name="email" placeholder="이메일을 입력하세요." pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = ''" class="common-input mt-20" required="" type="email">
						</div>
						<div class="col-lg-10">
							<textarea class="common-textarea mt-20" name="message" placeholder="메세지를 입력하세요." onfocus="this.placeholder = ''" onblur="this.placeholder = ''" required=""></textarea>
					</div>
					<div class="col-lg-10 d-flex justify-content-end">
						<button class="primary-btn white-bg d-inline-flex align-items-center mt-20"><span class="mr-10">제휴 신청</span><span class="lnr lnr-arrow-right"></span></button> <br>
					</div>
					<div class="alert-msg"></div>
					</div>
				</form>
			</div>
		</section>

		<footer class="section-gap">
			<div class="container">
				<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
					<p class="footer-text m-0">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#" target="_blank">Oh!review</a></p>
				</div>
			</div>
		</footer>
		
		
		
		
		
		
		
		
		
      <!-- 로그인 모달 -->
     <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	 <div class="modal-dialog modal-sm">
	 <div class="modal-content">
	 <div class="modal-header">
	 <h4 class="modal-title" id="myModalLabel">오-리뷰 로그인</h4>
	 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
	 </div>
	 
	 <div class="modal-body">
	 <form action="MemberLoginAction" method="post">
	<p><input type="text" name="member_id" class="form-control br-radius-zero" 
	placeholder="아이디를 입력하세요." data-rule="minlen:4" data-msg="아이디를 4자이상 입력하세요." /></p>
	<p><input type="password" name="member_password" class="form-control br-radius-zero" 
	placeholder="비밀번호를 입력하세요." data-rule="minlen:6" data-msg="비밀번호를 6자이상 입력하세요." /></p>
	 <div class="modal-footer">
	 <p>
	 <button id="loginbtn" class="btn btn-primary">로그인</button>
	 <button id="loginbtn" class="btn btn-info">찾기</button>
	 </p>
	</div>
	</form>
	</div>
	</div>
	</div>
	</div>

	</body>
</html>
