<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.member.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	int insert_state = (int)request.getAttribute("insert_state");
	int id_state = (int) request.getAttribute("id_state");
	String id = request.getParameter("id");
%>

<%
	if(id_state == memberDAO.MEMBER_EXISTENT) {
%>
		<script language="javascript">
			alert("아이디가 이미 존재 합니다.");
			history.back();
		</script>
<%
		} else {
			if(insert_state == memberDAO.MEMBER_JOIN_SUCCESS) {
%>
			<script language="javascript">
				alert("회원가입을 축하 합니다.");
				document.location.href="index.jsp";				
			</script>
			
<%			//response.sendRedirect("main.jsp");				
			} else {
%>
			<script language="javascript">
				alert("회원가입에 실패했습니다.");
				document.location.href="index.jsp";
			</script>
<%
			}
		}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>