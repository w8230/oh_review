<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);* {font-family: 'Nanum Gothic', sans-serif;}</style>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
.login {
    margin-top:27px;
}
.set-logo {
    background:#ffffff;
    color:#ffffff;
    border-radius:500%;
    padding:11px;
    font-size:108px;
}
.logo {
    margin-top:27px;
    margin-bottom:54px;
}

.last-row {
    margin-bottom:0px;
}

.checklabel {
    font-weight:100;
}
</style>
<script>
	$(function(){
		$("#findBtn").click(function(){
			$.ajax({
				url : "find_pw_action",
				type : "POST",
				data : {
				member_id : $("#member_id").val(),
				member_email : $("#member_email").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});
	})
</script>
</head>
<body>

</body>
</html>