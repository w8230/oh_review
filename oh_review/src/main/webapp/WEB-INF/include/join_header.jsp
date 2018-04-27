<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/joincss/style.css">
        
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src="js/join.js"></script>
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
			 if(frm.member_id.value==""){
				 alert("아이디를 입력하세요.")
				 return false;
			 }else if(frm.member_password.value==""){
				 alert("비밀번호를 입력하세요.")
				 return false;
			 }else if(frm.member_passcheck.value==""){
				 alert("비밀번호를 한번 더 입력하세요.")
				 return false;
			 }else if(frm.member_name.value==""){
				 alert("이름을 입력하세요.")
				 return false;
			 }else if(frm.member_blog.value==""){
				 alert("블로그를 입력하세요.")
				 return false;
			 }else if(frm.member_email.value==""){
				 alert("이메일을 입력하세요.")
				 return false;
			 }
			 else if(frm.member_emailchk.value==""){
				 alert("이메일 인증번호를 입력하세요.")
				 return false;
			 }else if(frm.member_passcheck.value!=frm.member_password.value){
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
<style>
#ww{width:1000px; margin:0 auto;}
</style>
<script type="text/javascript">
function chk(){
 var req = document.form.req.checked;
 var num = 0;
 if(req == true){
  num = 1;
 }
 if(num==1){
  document.form.submit();
 }else{
  alert("개인정보 약관에 동의하셔야 합니다.");
 }
}
function nochk(){
 alert("메인페이지로 이동합니다.");
location.href="bbs_main";}
</script>
<script type="text/javascript">
		document=document.frm;
		var sel_file;
		
		$(document).ready(function(){
			$("#input_img").on("change", handleImgFileSelect);	
		});
		
		function handleImgFileSelect(e){
			var files=e.target.files;
			var filesArr=Array.prototype.slice.call(files);
			
			filesArr.forEach(function(f){
				if(!f.type.match("image.*")){
					alert("확장자는 이미지 형식만 가능합니다.");
					return;
				}
				
				sel_file=f;
				
				var reader=new FileReader();
				reader.onload=function(e){
					$("#img").attr("src", e.target.result);
				}
				reader.readAsDataURL(f);
			});
	}


</script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
   <!-- 로그인 모달 -->
     <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	 <div class="modal-dialog modal-sm">
	 <div class="modal-content">
	 <div class="modal-header">
	 <span class="modal-title" id="myModalLabel">오-리뷰 로그인</span>
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
	 </p>
	</div>
	</form>
	</div>
	</div>
	</div>
	</div>
</body>
</html>