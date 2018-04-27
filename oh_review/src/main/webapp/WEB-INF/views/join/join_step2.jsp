<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/join_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오!리뷰</title>
</head>
<body>
    <header id="xt-home" class="xt-header">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="xt-language col-md-6 col-sm-6 col-xs-12">
                            <div class="each-nav">

                            </div>
                        </div>
                        
				<c:if test="${login_member.member_id!=null }">
                        <div class="user-nav pull-right col-md-6 col-sm-6 col-xs-12">
                            <ul>
                                <li><a href="member_mypage?member_id=${login_member.member_id}">마이페이지</a></li>
                                <li><a href="logout">로그아웃</a></li>
                                <li><a href="#">${login_member.member_id }님 반갑습니다.</a></li>
                                <!-- admin로 접속시 노출 -->
                                <c:if test="${login_member.member_id eq 'admin' }">
                                <li><a href="admin_index">관리자페이지</a></li>
                                </c:if>
                            </ul>
                        </div>
					</c:if>
					
					<!-- 세션에 id값이 없을 시 -->
					<c:if test="${login_member.member_id==null }">
                           <div class="user-nav pull-right col-md-6 col-sm-6 col-xs-12">
                            <ul>
                                <li><a href="bbs_main">홈</a></li>
                                <li><a data-toggle="modal" data-target="#loginModal" href="#">로그인</a></li>
                            </ul>
                        </div>
					</c:if>
                    </div>
                </div>
            </div>

            <div class="main-navigation">
                <nav class="navbar navbar-fixed-top nav-scroll">
                    <div class="container">
                        <div class="row">
                            <div class="navbar-header">
                              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span aria-hidden="true" class="icon"></span>
                              </button>
                              <a class="navbar-brand" href="bbs_main"><img src="assets/images/logo_join.png" alt="" class="img-responsive"></a>
                            </div>
                            
                            <div class="collapse navbar-collapse" id="js-navbar-menu">
                                <ul class="nav navbar-nav navbar-right ep-mobile-menu" id="navbar-nav">
                                    <li  class="active"><a href="#">STEP 2</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </header>
        <div class="menu-spacing">
            <div class="container">
                <div class="row">
                    <div class="mobile-menu-area visible-xs visible-sm">
                        <div class="mobile-menu">
                            <nav id="mobile-menu-active">
                            </nav>
                        </div>	
                    </div>
                </div>
            </div>
        </div>
                    <div class="section-title">
                    <h3>개인 회원</h3>
                        <span class="xt-title-bg"></span>
                    </div>
<form action="joinMember" method="post" name="frm" id="frm" class="frm" enctype="multipart/form-data">
        <div class="col-md-6 col-md-offset-3">
            <div class="form-group">
              <label for="member_id">아이디<font name="check_id" size="2" ></font></label>
               <div class="input-group">
               <input type="text" class="form-control"  name="member_id" id="member_id" 
                  placeholder="4자 ~ 16자 사이로 입력하세요. " maxlength="16" />
              <span class="input-group-btn">
              <a class="btn btn-primary" onclick="check_id()"><i class="fa fa-id-badge spaceRight"></i>중복확인</a>
             </span>
             </div>
            </div>
        <div class="form-group">
          <label  >비밀번호<font name="pass_check" size="2" ></font></label>
        <div class="col">
          <input class="form-control" name="member_password"
          id="member_password" type="password" placeholder="특수문자 포함 8자 이상 입력하세요."><br/>
              <input class="form-control" name="member_passcheck" 
              id="member_passcheck" type="password" placeholder="비밀번호를 한번 더 입력하세요.">
             </div>
          </div>
        <div class="form-group">
            <label>이름</label>
          <div class="col">
            <input class="form-control" name="member_name" 
            id="member_name" type="text" placeholder="예 ) 홍길동">
          </div>
        </div>
                    <div class="form-group">
            <labe>블로그</label>
          <div class="col">
            <input class="form-control" name="member_blog" 
            id="member_blog" type="text" placeholder="예 ) https://blog.naver.com/주소">
          </div>
        </div>
            <div class="form-group">
              <label>이메일<font name="check_email" size="2" ></font></label>
              <div class="col">
                 <input type="email" class="form-control" name="member_email" 
                  id="member_email" placeholder="예 ) admin@ohreview.com" />
              </div>
            </div>
            <div class="form-group">
<label>주소</label>
 <div class="col">
 <div class="input-group">
<input class="form-control" type="text" name = "member_postcode" id="member_postcode" placeholder="우편번호" readonly="readonly">
<span class="input-group-btn">
<a class="btn btn-primary" type="button" onclick="address_execDaumPostcode()"><i class="fa fa-home spaceRight"></i>우편번호 찾기</a>
</span>
</div>
</div>
</div>

<div class="form-group">
 <div class="col">
<input class="form-control" type="text"  name = "member_address" id="member_address" placeholder="주소" readonly="readonly">
<input class="form-control" type="text"  name = "member_address_detail" id="member_address_detail" placeholder="상세주소">
<hr>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</div>
</div>
<div class="form-group">
<div class="col">
<label>프로필 이미지</label>
<input class="form-control" name="member_img"
id="input_img" type="file">
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
              <div data-toggle="buttons">

                  <span class="fa fa-check"></span>

              <a href="#">이용약관</a>에 동의하셨습니다.
              </div>
            </div>
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info" onclick="return send_onclick();">
            <i class="fa fa-check spaceRight"></i>회원가입</button>
              <button type="reset" class="btn btn-warning">
              <i class="fa fa-times spaceRight"></i>다시쓰기</button><hr>
            </div>
        </div>
          </form>
<script src="//code.jquery.com/jquery.min.js"></script>


<%@include file="/WEB-INF/include/bbs_footer.jsp" %>
</body>
</html>