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
                    <span class="glyphicon glyphicon-ok" style="font-size:50px; color:green;"></span>
                    <br/><br/>
                    <p><strong>아이디를 찾았습니다!</strong></p>
                </div>
              </div>
              <hr>
              <div class="form-group" style="text-align:center;">
              <strong>${find_id_action.member_name}</strong>님의 아이디는
              <strong style="color:blue;">${find_id_action.member_id }</strong> 입니다.
              </div>

        </div>
    </div>
</div>
</body>
</html>