<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>

<%
	int state = (int)request.getAttribute("state");
%>

<%
	if(state == 1) {
%>
	<script language="javascript">
		alert("반납 완료");
		document.location.href="./returnbook.jsp";
	</script>
<%
	}else if(state == 0){ 
%>
	<script language="javascript">
		alert("책이 존재하지 않습니다.");
		document.location.href="./rentalbook.jsp";
	</script>
<%} else {%>
	<script language="javascript">
		alert("해당 도서관 책이 아닙니다.");
		document.location.href="./rentalbook.jsp";
	</script>

<%} %>

<jsp:include page="footer.jsp"></jsp:include>