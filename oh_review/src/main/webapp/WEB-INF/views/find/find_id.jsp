<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/include/find_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오!리뷰</title>
</head>
<body style="background-color:#ffffff;">
<form action="find_id_action" method="post">
<div class="container" style="background-color:#fff;">
    <div class="row login" style="background-color:#fff;">
        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 well" style="background-color:#fff;">
              <div class="form-group text-center">
                <div class="logo">
                    <span class="glyphicon glyphicon-user" style="font-size:50px;"></span>
                    <br/><br/>
                    <p><strong>아이디를 잊어버리셨나요?</strong></p>
                </div>
              </div>
              
              <div class="form-group">
              <label>이름</label>
                <input type="text" name="member_name" id="member_name" class="form-control" placeholder="이름을 입력하세요." required autofocus>
              </div>
              <div class="form-group">
              <label>이메일</label>
                <input type="text" name="member_email" id="member_email" class="form-control" placeholder="이메일을 입력하세요." required>
              </div>
              <div class="form-group">
                <input type="submit" class="btn btn-default btn-lg btn-block btn-success" value="아이디 찾기">
              </div>
                
        </div>
    </div>
</div>
</form>
</body>
</html>