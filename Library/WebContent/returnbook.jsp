<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
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
	<form action="returnbook.do" method="post">
  		<div class="form-group">
	    	<label for="bid">도서 코드</label>
	    	<input type="text" class="form-control" name="bid" id="bid">
  			<input type="hidden" name="member"value="<%=member%>">
  		</div>
  		<button class="btn btn-success" type="submit">반납하기</button>
  	</form>
</div>
  	
<jsp:include page="footer.jsp"/>