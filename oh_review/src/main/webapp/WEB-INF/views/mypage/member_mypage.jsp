<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/mypage_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:useBean id="toDay" class="java.util.Date" />

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
  <a href="member_mypage?member_id=${login_member.member_id}" class="list-group-item active">내 정보</a>
  <a href="apply_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">신청한 캠페인</a>
   <a href="apply_ok_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">참여중인 캠페인</a>
  <a href="review_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">리뷰 관리</a>
<a href="my_contact_list?MEMBER_ID=${login_member.member_id}" class="list-group-item">문의 내역</a>
</div> 
                    </div>
                </div>
                <div class="col-md-9 ">
                    <div class= "content-box well">
                                <form action="MemberModify" method="post" name="frm" id="frm" class="frm">
                                <input type="hidden" name="member_id" value="${login_member.member_id}"/>
                                <input type="hidden" name="UPDATEDATE" value="<fmt:formatDate value="${toDay}" pattern="yyyy년 MM월 dd일 HH시 mm분" />"/>
<fieldset>

<!-- Form Name -->
<legend>${member_mypage.member_id }님의 정보입니다.<br></legend><br/>

<!-- Name of Buyer input-->
        <div class="col-md-6 col-md-offset-3">
            <div class="form-group">
			<div class="thumbnail" >
			<img class="img-responsive user-photo" src="resources/upload_member/${member_mypage.member_img}" >
			</div>
			</div>

			<div class="form-group">
              <label>비밀번호 <font name="pass_check" size="2" ></font></label>
                 <input type="password" class="form-control" name="member_password"  id="member_password" placeholder="변경할 비밀번호를 입력하세요." />
                 <input type="password" class="form-control" name="member_passcheck"  id="member_passcheck" placeholder="비밀번호 를 한번 더 입력하세요." />
            </div>


            <div class="form-group">
              <label>블로그</label>
                 <input type="text" class="form-control" name="member_blog" 
                  id="member_blog" value="${member_mypage.member_blog}" />
            </div>
            
            <div class="form-group">
              <label>이메일</label>
                <input class="form-control"  name="member_email" 
              id="member_email" type="text" value="${member_mypage.member_email}">
            </div>
            
<div class="form-group">
<label for="username">주소</label>
 <div class="col"><div class="input-group">
<input class="form-control" type="text" name = "member_postcode" id="member_postcode" value="${member_mypage.member_postcode}" readonly="readonly">
<span class="input-group-btn">
<a class="btn btn-primary" type="button" onclick="address_execDaumPostcode()"><i class="fa fa-home spaceRight"></i>우편번호 찾기</a>
</span>
</div>
</div>
</div>

<div class="form-group">
 <div class="col">
<input class="form-control" type="text"  name = "member_address" id="member_address" value="${member_mypage.member_address}" readonly="readonly">
<input class="form-control" type="text"  name = "member_address_detail" id="member_address_detail" value="${member_mypage.member_address_detail}">
<hr>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</div>
</div>

<script>
    function address_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('member_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('member_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('member_address_detail').focus();
            }
        }).open();
    }
    
</script>
            <div class="form-group">
            <span class="fa fa-check"></span>
                마지막 업데이트 : ${member_mypage.UPDATEDATE }
            </div>
            
            <div class="form-group">
            </div>
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info" onclick="return send_onclick();">
            <i class="fa fa-check spaceRight" ></i>수정</button>
              <button type="reset" class="btn btn-warning">
              <i class="fa fa-times spaceRight"></i>취소</button><hr>
            </div>
        </div>

</fieldset>
</form>
</div>
 </div>
</div>
</div>
</div>
<hr>
<br/>
</body>
</html>