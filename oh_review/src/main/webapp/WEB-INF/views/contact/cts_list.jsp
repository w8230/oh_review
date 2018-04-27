<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/mypage_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오!리뷰</title>
</head>
<body>
<div class="site-panel"style="margin-top:110px">
<div class="container">
<div class="row">
<div class="col-md-3 well">
<div class= "sidebar">
<div class="list-group">
  <a href="cts_main" class="list-group-item">1:1 문의 신청</a>
  <a href="cts_list?page_num=1" class="list-group-item active">1:1 문의 게시판</a>
</div> 
</div>
</div>

<div class="col-md-9 ">
<div class= "content-box well">
<fieldset>
<legend>1:1 문의 게시판<br></legend><br/>
									<div class="card-body">
										<table class="table table-head-bg-success table-striped table-hover" style="text-aligin:center;">
											<thead>
												<tr>
												<th scope="col"></th>
												<th scope="col"></th>
												<th scope="col"></th>
													<th scope="col">번호</th>
													<th scope="col">제목</th>
													<th scope="col">작성자</th>
													<th scope="col">작성일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${cts_list}" var="cts_list">
												<tr>
												<td></td>
												<td></td>
												<td></td>
													<td>${cts_list.CTS_NUMBER}</td>
													
													<td>
													<a href="cts_view?CTS_NUMBER=${cts_list.CTS_NUMBER}">${cts_list.CTS_TITLE }</a></td>
													<td>${cts_list.MEMBER_ID}</td>
													<td>${cts_list.CTS_WRITE_DATE }</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
</fieldset>
<div class="section-title">
  <nav style="aligin:center;">
  <ul class="pagination">
  

	
	<c:forEach var="list" begin="1" end="${total_page}">
    <li>	
	<a href="list?page_num=${list}">${list}</a>
	</li>
    </c:forEach>


  </ul>
</nav>
</div>
</div>
 </div>
</div>
</div>
</div>
<hr>
<br/>
</body>
</html>