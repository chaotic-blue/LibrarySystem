<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>

<%
	if(session.getAttribute("ValidMem") == null)
	{
%>
	<script language="javascript">
		alert("로그인 해주세요.");
		history.go(-1);
	</script>
<%	} %>	

<%	
	String member = (String)session.getAttribute("id");
	if(member != null)
	if(!member.equals("admin")){
%>
	<script language="javascript">
		alert("관리자로 로그인 해주세요.");
		document.location.href="main.jsp";
	</script>
<%} %>

<div class="layer">
<form action="insertbook.do" method="post"> <!--  enctype="multipart/form-data">-->
  <div class="form-group">
    <label for="exampleFormControlInput1">도서명</label>
    <input type="text" class="form-control" name="bname">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">저자</label>
    <input type="text" class="form-control" name="writer">
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlSelect2">출판사</label>
   	<input type="text" class="form-control" name="publisher">
  </div>
  
   <div class="form-group">
    <label for="exampleFormControlSelect2">위치</label>
   	<input type="text" class="form-control" name="location">
  </div>
  
   <div class="form-group">
    <label for="exampleFormControlSelect2">수량</label>
   	<input type="text" class="form-control" name="amount">
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">설명</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" cols="60" name="comments"></textarea>
  </div>
  
  
<!-- 	<div class="custom-file">
       	<label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
    	<div class="invalid-feedback">Example invalid custom file feedback</div>
  	</div>
  	
   	<input type="file" name="fileFolder" id="fileFolder" value="File Upload" > -->
	<br>
	<button type="submit" class="btn btn-success">입력하기</button>
	<button type="reset" class="btn btn-secondary">다시 작성</button>
	<button type="button" class="btn btn-danger" onclick="document.location.href='main.jsp'">취소</button> 
</form>
</div>

<jsp:include page="footer.jsp"></jsp:include>