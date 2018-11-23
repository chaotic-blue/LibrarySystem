<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int state = (int)request.getAttribute("state");
	String id = request.getParameter("id");
%>

<%
	if(state == 1) {
%>
		<script language="javascript">
			alert("삭제가 완료 되었습니다");
			document.location.href="deletebook.jsp";
		</script>
<%
	}else {    
%>
	<script language="javascript">
			alert("해당 책이 존재하지 않습니다");
			document.location.href="deletebook.jsp";
	</script>
<%}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>