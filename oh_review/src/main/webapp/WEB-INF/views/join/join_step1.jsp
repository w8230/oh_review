<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/join_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오!리뷰</title>
<head>
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
                              
                            </div>
                            
                            <div class="collapse navbar-collapse" id="js-navbar-menu">
                                <ul class="nav navbar-nav navbar-right ep-mobile-menu" id="navbar-nav">
                                    <li  class="active"><a href="#">STEP 1</a></li>
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

 <form action="join_step2" name="form">
<div id="ww">
 <table style="width:1400; height:650; aligin:center;">
  <tr>
   <td width="100%" height="10%">
   </td>
  </tr>
  <tr>
   <td width="100%" height="50%" align="center">
   <p align="center">
   <a class="navbar-brand" href="#"><img src="assets/images/flogo_join.png" alt="" class="img-responsive"></a>
   </p>
   <br>
   <textarea rows="20" cols="150">가. 수집하는 개인정보의 항목첫째, 회사는 회원가입, 
원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
회원가입
- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
만14세 미만 아동 회원가입 
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
단체아이디 회원가입 
- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
- 선택항목 : 대표 홈페이지, 대표 팩스번호
둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 
이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다. 
넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다. 
- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보
다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다. 
- 신용카드 결제시 : 카드사명, 카드번호 등
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
- 계좌이체시 : 은행명, 계좌번호 등
- 상품권 이용시 : 상품권 번호
나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다. 
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
- 협력회사로부터의 제공 
- 생성정보 수집 툴을 통한 수집
   </textarea>
   <br><br>
   <span>
   <input type="checkbox" name="req"> 개인정보 수집 및 이용에 동의합니다. </span>
   </td>
  </tr>
  <tr>
   <td align="center" valign="top">
   <br>
   <p>
    <input type="button" class="btn btn-primary" value="동의" onclick="chk()"/>&nbsp;&nbsp;&nbsp;
    <input type="button" class="btn btn-danger" value="취소" onclick="nochk()"/>
    </p>
   </td>
  </tr>
 </table>
</div>
</form>
<br><br><br><hr>
<%@include file="/WEB-INF/include/bbs_footer.jsp" %>
</body>
</html>