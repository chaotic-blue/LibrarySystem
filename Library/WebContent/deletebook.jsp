<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
	
<% 
	String member = (String)session.getAttribute("id");	
	if(!member.equals("admin")){
%>
	<script language="javascript">
		alert("관리자로 로그인 해주세요.");
		document.location.href="index.jsp";
	</script>
<%} %>
	
<div class="layer">
	<form action="deletebook.do" method="post">
  		<div class="form-group">
	    	<label for="bid">도서 코드</label>
	    	<input type="text" class="form-control" name="bid" id="bid">
  		</div>
  		<button class="btn btn-success" type="submit">삭제</button>
  	</form>
</div>
	
<jsp:include page="footer.jsp"/>