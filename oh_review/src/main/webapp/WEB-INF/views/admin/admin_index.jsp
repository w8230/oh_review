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
										<div class="card-title">회원 관리</div>
									</div>
									<div class="card-body">
										<table class="table table-head-bg-success table-striped table-hover">
											<thead>
												<tr>
													<th scope="col">아이디</th>
													<th scope="col">이름</th>
													<th scope="col">이메일</th>
													<th scope="col">삭제</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach items= "${member_list}"  var="list">
												<tr>
													<td>${list.member_id}</td>
													<td>${list.member_name}</td>
													<td>${list.member_blog}</td>
													<td><a href="member_delete?member_id=${list.member_id}" class="btn btn-link btn-simple-danger">
																	<i class="la la-times"></i></a></td>
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