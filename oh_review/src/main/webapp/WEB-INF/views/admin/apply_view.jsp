<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/admin_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠페인 처리 변경</title>
</head>
<body>
<br>
				<div class="content">
					<div class="container-fluid">
				<form action="apply_modify" method="post">
				<input type="hidden" name="APPLY_NUMBER" value="${apply_view.APPLY_NUMBER}"/>
				<input type="hidden" name="EXP_BBS_NUMBER" value="${apply_view.EXP_BBS_NUMBER}"/>
				<input type="hidden" name="MEMBER_ID" value="${apply_view.MEMBER_ID}"/>
				<input type="hidden" name="EXP_TITLE" value="${apply_view.EXP_TITLE}"/>
						<div class="row">		
							<div class="col-md-6">
								<div class="card">
									<div class="card-body">
											<br>
											<div class="form-group">
											<label> 캠페인 : ${apply_view.EXP_TITLE}</label>
											</div>
											<div class="form-group">
											<label> 이름 : ${apply_view.MEMBER_ID}</label>
											</div>
											<div class="form-group">
											<label> 전화번호 : ${apply_view.APPLY_TEL}</label>
											</div>
											<div class="form-group">
											<label> 포스팅URL : ${apply_view.APPLY_BLOG}</label>
											</div>
										<div class="form-group">
											<label for="smallSelect">처리</label>
												<select class="form-control form-control-sm" name="APPLY_RESULT">
													<option value="대기">대기</option>
													<option value="승인">승인</option>
													<option value="반려">반려</option>
												</select>
										</div>
										<div class="card-action" style="aligin:center;  margin:auto;">
											<button class="btn btn-success">등록</button>
											<button class="btn btn-danger">취소</button>
										</div>
										</div>
									</div>
								</div>
								</div>
								</form>
								</div>
								</div>
</body>
</html>