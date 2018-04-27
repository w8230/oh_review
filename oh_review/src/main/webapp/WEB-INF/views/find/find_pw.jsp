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
<div class="container" style="background-color:#fff;">
    <div class="row login" style="background-color:#fff;">
        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 well" style="background-color:#fff;">
              <div class="form-group text-center">
                <div class="logo">
                    <span class="glyphicon glyphicon-lock" style="font-size:50px;"></span>
                    <br/><br/>
                    <p><strong>비밀번호를 잊으셨나요?</strong></p>
                    <p>가입 시 기재된 이메일로 임시 비밀번호를 발송해드립니다.</p>
                </div>
              </div>
              <div class="form-group">
              <label>아이디</label>
                <input type="text" name="member_id" id="member_id" class="form-control" placeholder="아이디를 입력하세요." required autofocus>
              </div>
              <div class="form-group">
              <label>이메일</label>
                <input type="email" name="member_email" id="member_email" class="form-control" placeholder="이메일을 입력하세요." required>
              </div>
              <div class="form-group">
                <input type="button" id="findBtn" class="btn btn-default btn-lg btn-block btn-success" value="암호 찾기">
              </div>
        </div>
    </div>
</div>
</body>
</html>