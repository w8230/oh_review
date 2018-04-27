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
				<form action="write" method="post" enctype="multipart/form-data">
						<div class="row">
						
						<!-- 캠페인 등록 -->
							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<div class="card-title">캠페인 등록</div>
									</div>
						
									<div class="card-body">
											<div class="form-group">
												<label for="smallSelect">대분류 카테고리</label>
												<select class="form-control form-control-sm" name="EXP_CATEGORIE">
													<option value="먹거리">먹거리</option>
													<option value="의류">의류</option>
													<option value="여행">여행</option>
													<option value="숙박">숙박</option>
													<option value="뷰티">뷰티</option>
													<option value="헬스케어">헬스케어</option>
													<option value="문화">문화</option>
													<option value="생활">생활</option>
													<option value="배송형">배송형</option>
												</select>
											</div>
										<div class="form-group">
											<label for="smallSelect">소분류 카테고리</label>
												<select class="form-control form-control-sm" name="EXP_CATEGORIE_DETAIL">
													<optgroup label="먹거리">
													<option value="일반음식점">일반음식점</option>
													<option value="레스토랑">레스토랑</option>
													<option value="술집">술집</option>
													<optgroup label="의류">
													<option value="캐쥬얼">캐쥬얼</option>
													<option value="남성">남성</option>
													<option value="여성">여성</option>
													<option value="기타">기타</option>											
													<optgroup label="여행">
													<option value="패키지">패키지</option>
													<option value="티켓">티켓</option>				
													<optgroup label="숙박">
													<option value="호텔">호텔</option>
													<option value="모텔">모텔</option>
													<option value="게스트하우스">게스트하우스</option>												
													<optgroup label="뷰티">
													<option value="ALL">전체</option>
													<optgroup label="헬스케어">
													<option value="ALL">전체</option>
													<optgroup label="문화">
													<option value="뮤지컬">뮤지컬</option>
													<option value="콘서트">콘서트</option>
													<option value="공연">공연</option>
													<optgroup label="생활">
													<option value="가구">가구</option>
													<option value="인테리어">인테리어</option>
													<optgroup label="배송형">
													<option value="기타">기타</option>
												</select>
										</div>
										<div class="form-check">
											<label>지역</label><br/>
											<label class="form-radio-label">
												<input class="form-radio-input" type="radio" name="EXP_ADD_CITY" value="서울"  checked>
												<span class="form-radio-sign">서울</span>
											</label>
											<label class="form-radio-label ml-3">
												<input class="form-radio-input" type="radio" name="EXP_ADD_CITY" value="경기">
												<span class="form-radio-sign">경기</span>
											</label>
												<label class="form-radio-label ml-3">
												<input class="form-radio-input" type="radio" name="EXP_ADD_CITY" value="인천">
												<span class="form-radio-sign">인천</span>
											</label>
												<label class="form-radio-label ml-3">
												<input class="form-radio-input" type="radio" name="EXP_ADD_CITY" value="제주도">
												<span class="form-radio-sign">제주도</span>
											</label>
												<label class="form-radio-label ml-3">
												<input class="form-radio-input" type="radio" name="EXP_ADD_CITY" value="부산">
												<span class="form-radio-sign">부산</span>
											</label>
											<label class="form-radio-label ml-3">
												<input class="form-radio-input" type="radio" name="EXP_ADD_CITY" value="기타">
												<span class="form-radio-sign">기타</span>
											</label>
											<select class="form-control form-control-sm" name="EXP_ADD_DETAIL">
													<optgroup label="서울">
													<option value="강남">강남</option>
													<option value="마포">마포</option>
													<option value="동대문">동대문</option>
													<option value="구로">구로</option>
													<option value="관악">관악</option>
													<optgroup label="경기">
													<option value="부천">부천</option>
													<option value="수원">수원</option>
													<option value="안양">안양</option>
													<option value="안산">안산</option>											
													<optgroup label="인천">
													<option value="부평">부평</option>
													<option value="계양">계양</option>
													<option value="송도">송도</option>	
													<option value="청라">청라</option>	
													<option value="구월">구월</option>							
													<optgroup label="제주도">
													<option value="제주">제주</option>
													<option value="서귀포">서귀포</option>									
													<optgroup label="부산">
													<option value="해운대">해운대</option>
													<option value="광안리">광안리</option>
												<optgroup label="기타">
													<option value="기타">기타</option>
												</select>
												</select>													
										</div>
											<div class="form-group">
												<label for="smallSelect">모집인원 (5 단위)</label>
												<select class="form-control form-control-sm" name="EXP_RECRUIT_MEM">
													<option value="5">5</option>
													<option value="10">10</option>
													<option value="15">15</option>
													<option value="20">20</option>
													<option value="25">25</option>
													<option value="30">30</option>
													<option value="35">35</option>
													<option value="40">40</option>
													<option value="45">45</option>
													<option value="50">50</option>
												</select>
											</div>										
										<div class="form-group">
											<label>마감 날짜</label>
											<input type="date" class="form-control" name="EXP_RECUIT_DATE" value="2018-04-01">
										</div>
										<div class="form-group">
												<label>업체명 (타이틀)</label>
												<input type="text" class="form-control input-pill" name="EXP_TITLE">
											</div>
											<div class="form-group">
												<label for="comment">모집 내용</label>
												<textarea class="form-control" name="CONTENT_EXPERIENCE" rows="5">
												</textarea>
											</div>
											<div class="form-group">
												<label for="comment">업체 내용</label>
												<textarea class="form-control" name="CONTENT_ENTERPRICE" rows="5">
												</textarea>
											</div>
											<div class="form-group">
											<label for="exampleFormControlFile1">썸네일</label>
											<input type="file" class="form-control-file" name="EXP_IMG">
											</div>
											
										<div class="card-action">
											<button class="btn btn-success">등록</button>
											<button class="btn btn-danger">취소</button>
										</div>
										</div>
									</div>
								</div>
								</form>
								<!-- 캠페인 등록 끝 -->
								
								
								
								<!-- 캠페인 관리 -->
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<div class="card-title">캠페인 관리</div>
										</div>
									<div class="card-body ">
										<div class="table-full-width">
											<table class="table">
												<thead>
													<tr>
														<th>
															<div class="form-check">
															#
															</div>
														</th>
														<th>업체명</th>
														<th></th>
													</tr>
												</thead>
												<tbody>
												<c:forEach items="${admin_bbs_list}" var="CampainBean">
													<tr>
														<td>
															<div class="form-check">
																<label class="form-check-label">${CampainBean.EXP_BBS_NUMBER }</label>
															</div>
														</td>
														<td><a href="campain_content_view?EXP_BBS_NUMBER=${CampainBean.EXP_BBS_NUMBER}">${CampainBean.EXP_TITLE }</a></td>
														<td class="td-actions text-right">
															<div class="form-button-action">
															<a href="admin_content_modify?EXP_BBS_NUMBER=${CampainBean.EXP_BBS_NUMBER}" 
															onclick="window.open(this.href,'','width=500, height=800, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600'); return false;" 
															class="btn btn-link <btn-simple-primary">
																	<i class="la la-edit"></i>
																</a>
																<a  href="delete?EXP_BBS_NUMBER=${CampainBean.EXP_BBS_NUMBER}" class="btn btn-link btn-simple-danger">
																	<i class="la la-times"></i>
																</a>
															</div>
														</td>
													</tr>
												</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
													<div class="card-header " style="text-aligin:center;  margin:auto;">
													<c:forEach var="list" begin="1" end="${total_page}">
													<a class="btn btn-primary" href="admin_forum?page_num=${list}">${list}</a>
												    </c:forEach>
													</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

</body>
</html>