<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int state = (int)request.getAttribute("state");
%>
	
<%
	if(state < 0) {
%>
	<script language="javascript">
		alert("등록 오류");
		document.location.href="insertbook.jsp";
	</script>
<%
	}else { 
%>
	<script language="javascript">
		alert("등록 성공");
		document.location.href="insertbook.jsp";
	</script>
<%	} %>		    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>