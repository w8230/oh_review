<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);* {font-family: 'Nanum Gothic', sans-serif;}</style>
		<link rel="icon" type="image/png" href="img/logo.png">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="shortcut icon" href="img/fav.png">
		<meta name="author" content="Colorlib">
		<meta name="description" content="">
		<meta name="keywords" content="">
		<meta charset="UTF-8">
		<link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css?family=Poppins:100,300,500" rel="stylesheet">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/linearicons.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/form_style.css">
		<script src="js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/jquery.counterup.min.js"></script>
		<script src="js/waypoints.min.js"></script>
		<script src="js/main.js"></script>
		<script src="js/join.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
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
		</script>
		<script type="text/javascript">
		
		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-36251023-1']);
		  _gaq.push(['_setDomainName', 'jqueryscript.net']);
		  _gaq.push(['_trackPageview']);
		
		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();
		
		</script>
</head>
<body>
</body>
</html>