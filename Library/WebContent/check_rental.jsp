<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>

<%
	int state = (int)request.getAttribute("state");
%>

<%
	if(state < 0) {
%>
	<script language="javascript">
		alert("전권 대여 중입니다.");
		document.location.href="./rentalbook.jsp";
	</script>
<%
	}else if(state == 0){ 
%>
	<script language="javascript">
		alert("책이 존재하지 않습니다.");
		document.location.href="./rentalbook.jsp";
	</script>
<%	}else { %>
	<script language="javascript">
		alert("대여가 완료되었습니다.");
		document.location.href="./rentalbook.jsp";
	</script>
	
<%}%>

<jsp:include page="footer.jsp"></jsp:include>