<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/include/admin_header.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>오!리뷰 - 관리자</title>
</head>
<body>
			<div class="main-panel">
				<div class="content">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md">
								<div class="card">
								<div class="card-header">
										<div class="card-title">리뷰어 관리</div>
									</div>
									<div class="card-body">
										<table class="table table-head-bg-danger table-striped table-hover">
											<thead>
												<tr>
													<th scope="col">아이디</th>
													<th scope="col">이름</th>
													<th scope="col">이메일</th>
													<th scope="col">상태</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach items= "${apply_mem_list}"  var="list">
												<tr>
													<td>${list.EXP_BBS_NUMBER}번</td>
													<td>${list.MEMBER_ID}</td>
													<td>${list.APPLY_BLOG}</td>
													<td><a href="apply_view?APPLY_NUMBER=${list.APPLY_NUMBER}" 
															onclick="window.open(this.href,'','width=500, height=530, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600'); return false;" 
															class="btn btn-link <btn-simple-primary">${list.APPLY_RESULT}</a></td>
												</tr>
												</c:forEach>
												
											</tbody>
										</table>
									</div>
								<div class="card-header " style="aligin:center;  margin:auto;">
								<c:forEach var="list" begin="1" end="${total_page}">
								<a class="btn btn-primary" href="apply_mem_list?page_num=${list}">${list}</a>
							    </c:forEach>
				</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>