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
  <a href="cts_main" class="list-group-item active">1:1 문의</a>
  <a href="cts_list?page_num=1" class="list-group-item">문의 게시판</a>

</div> 
</div>
</div>
<div class="col-md-9 ">
<div class= "content-box well">
<form action="cts_write" method="post" name="frm" id="frm" class="frm">
<input type="hidden" name="MEMBER_ID" value="${login_member.member_id}"/>
<fieldset>
<legend>1:1 문의<br></legend><br/>
        <div class="col-md-6 col-md-offset-3">

            <div class="form-group">
              <label>제목</label>
                 <input type="text" class="form-control" name="CTS_TITLE" placeholder ="제목을 입력하세요." required="required">
            </div>
            
               <div class="form-group">
              <label>분류</label>   
              <select name="CTS_CATEGORIE">
              <option value="상품">상품</option>
              <option value="배송">배송</option>
              <option value="기타">기타</option>
              </select>
            	</div>
            	
            <div class="form-group">
             <label>내용</label>
			<textarea class="form-control" name="CTS_CONTENT" rows="5" placeholder ="내용을 입력하세요." required="required">
			</textarea>
            </div>
            
            <hr>
            <div class="form-group">
            <input type="hidden" name="CTS_WRITE_DATE" value="<fmt:formatDate value="${toDay}" pattern="yyyy년 MM월 dd일 HH시 mm분" />"/>
            </div>
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info">
            <i class="fa fa-check spaceRight" ></i>등록</button>
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