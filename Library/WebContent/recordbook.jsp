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
<form action="recordbook.do" method="post">
	<div class="layer">
		<input type="submit" class="btn btn-success btn-lg" value="조회">
		<input type="button" class="btn btn-success btn-lg" value="취소" onclick="location.href='main.jsp'">
	</div>
</form>
<jsp:include page="footer.jsp"/>