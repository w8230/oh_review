<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>.
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage.css">
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/modal.css">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
		<script>
		 $(function(){
			  $('#member_password').keyup(function(){
			   $('font[name=pass_check]').text('');
			  }); 
			  $('#member_passcheck').keyup(function(){
			   if($('#member_password').val()!=$('#member_passcheck').val()){
			    $('font[name=pass_check]').text('');
			    $('font[name=pass_check]').css("color","red").html(" 불일치");
			   }else{
			    $('font[name=pass_check]').text('');
			    $('font[name=pass_check]').css("color","blue").html(" 일치");
			   }
			  }); 
			 }); 
		 
		 function send_onclick(){
			 frm=document.frm;
			 if(frm.member_password.value==""){
				 alert("비밀번호를 입력하세요.")
				 return false;
			 }else if(frm.member_passcheck.value==""){
				 alert("비밀번호를 한번 더 입력하세요.")
				 return false;
			 }else if(frm.member_blog.value==""){
				 alert("블로그를 입력하세요.")
				 return false;
			 }else if(frm.member_email.value==""){
				 alert("이메일을 입력하세요.")
				 return false;
			 }else if(frm.member_password.value!=frm.member_passcheck.value){
				 alert("비밀번호를 정확하게 입력하세요.")
				 return false;
			 }else if(frm.member_postcode.value==""){
				 alert("우편번호를 입력하세요.")
				 return false;
			 }else if(frm.member_address.value==""){
				 alert("주소를 입력하세요.")
				 return false;
			 }else if(frm.member_address_detail.value==""){
				 alert("상세주소를 입력하세요.")
				 return false;
			 }
			 
		 }
		</script>
</head>
<body>
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
                            <li><a href="bbs_main">홈</a></li>
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
                                <li><a data-toggle="modal" data-target="#loginModal" href="#">로그인</a></li>
                            </ul>
                        </div>
					</c:if>
                    </div>
                </div>
            </div>
            
            
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
        </div>
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
					<a href="find_pw" onclick="window.open(this.href,'','width=500, height=500, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600'); return false;">비밀번호를 잊으셨나요?</a>
				  </div>
				</div>
			</div>
		  </div>
</body>
</html>