<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/admin_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠페인 정보수정</title>
</head>
<body>
<br>
				<div class="content">
					<div class="container-fluid">
				<form action="modify" method="post" enctype="multipart/form-data">
						<div class="row">		
							<div class="col-md-6">
								<div class="card">
									<div class="card-body">
											<div class="form-group">
											<br>
<input type="hidden" name="EXP_BBS_NUMBER" value="${admin_content_modify.EXP_BBS_NUMBER}"/>
												<label for="smallSelect">대분류 카테고리 (현재 : ${admin_content_modify.EXP_CATEGORIE})</label>
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
											<label for="smallSelect">소분류 카테고리 (현재 : ${admin_content_modify.EXP_CATEGORIE_DETAIL})</label>
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
											<label>도시 (현재 : ${admin_content_modify.EXP_ADD_CITY}/${admin_content_modify.EXP_ADD_DETAIL})</label><br/>
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
												</select>
										</div>
											<div class="form-group">
												<label for="smallSelect">모집인원  (현재 : ${admin_content_modify.EXP_RECRUIT_MEM})</label>
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
											<label>마감 날짜 (현재 : ${admin_content_modify.EXP_RECUIT_DATE})</label>
											<input type="date" class="form-control" name="EXP_RECUIT_DATE" value="2018-04-01">
										</div>
										<div class="form-group">
												<label>업체명 (타이틀)</label>
												<input type="text" class="form-control input-pill" name="EXP_TITLE" value="${admin_content_modify.EXP_TITLE}">
											</div>
											<div class="form-group">
												<label for="comment">모집 내용</label>
												<textarea class="form-control" name="CONTENT_EXPERIENCE" rows="5">
												${admin_content_modify.CONTENT_EXPERIENCE}
												</textarea>
											</div>
											<div class="form-group">
												<label for="comment">업체 내용</label>
												<textarea class="form-control" name="CONTENT_ENTERPRICE" rows="5">
												${admin_content_modify.CONTENT_ENTERPRICE}
												</textarea>
											</div>
											<div class="form-group">
											<label>썸네일</label>
											<input type="file" class="form-control-file" name="EXP_IMG">
											</div>
										<div class="card-action" style="margin:auto">
											<button class="btn btn-success">등록</button>
											<button class="btn btn-danger">취소</button>
										</div>
										</div>
									</div>
								</div>
								</form>
								</div>
								</div>
</body>
</html>