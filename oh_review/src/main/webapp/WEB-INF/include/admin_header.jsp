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
		
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/ready.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/demo.css">
	
<script src="admin/js/core/jquery.3.2.1.min.js"></script>
<script src="admin/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="admin/js/core/popper.min.js"></script>
<script src="admin/js/core/bootstrap.min.js"></script>
<script src="admin/js/plugin/chartist/chartist.min.js"></script>
<script src="admin/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
<script src="admin/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
<script src="admin/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<script src="admin/js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
<script src="admin/js/plugin/jquery-mapael/maps/world_countries.min.js"></script>
<script src="admin/js/plugin/chart-circle/circles.min.js"></script>
<script src="admin/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script src="admin/js/ready.min.js"></script>
<script src="admin/js/demo.js"></script>

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
	<div class="wrapper">
		<div class="main-header">
			<div class="logo-header">
				<a href="index.html" class="logo">
					관리자 페이지
				</a>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
			</div>
			</div>
			<div class="sidebar">
				<div class="scrollbar-inner sidebar-wrapper">
					<div class="user">
						<div class="info">
							<a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									관리자
									<span class="user-level">admin</span>
								</span>
							</a>
						</div>
					</div>
					<ul class="nav">
						<li class="nav-item">
							<a href="bbs_main">
								<i class="la la-home"></i>
								<p>오!리뷰</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="member_list?page_num=1">
								<i class="la la-group"></i>
								<p>회원 관리</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="apply_mem_list?page_num=1">
								<i class="la la-group"></i>
								<p>리뷰어 관리</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="admin_forum?page_num=1">
								<i class="la la-check"></i>
								<p>캠페인 관리</p>
							</a>
						</li>
					</ul>
				</div>
			</div>

</body>
</html>