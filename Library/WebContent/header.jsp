<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String member = (String)session.getAttribute("id");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>예담 라이브러리</title>
	<link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="style.css"/>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light" style="background:#E2FDD1;">
	<div class="container">
	<a class="navbar-brand" href="main.jsp">Yedam-Library</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav mr-auto">
	      <!-- <li class="nav-item active">
	        <a class="nav-link" href="main.jsp">Home <span class="sr-only">(current)</span></a>
	      </li> -->
	    
	      <li class="nav-item">
	        <a class="nav-link" href="searchbook.jsp">도서 검색</a>
	      </li>	      
	   <%if(member != null){ 
	   		if(member.equals("admin")){
	   %> 
	      <li class="nav-item">
	        <a class="nav-link" href="insertbook.jsp">도서 입력</a>
	      </li>
	      
	      <li class="nav-item mr-auto">
	        <a class="nav-link" href="deletebook.jsp">도서 삭제</a>
	      </li>
	      
	      <li class="nav-item mr-auto">
	        <a class="nav-link" href="rentalbook.jsp">도서 대여</a>
	      </li>	  
	      
	      <li class="nav-item">
	        <a class="nav-link" href="returnbook.jsp">도서 반납</a>
	      </li>
	      
	      <li class="nav-item mr-auto">
	        <a class="nav-link" href="recordbook.do">도서 기록</a>
	      </li>
	   <%}}%>
	      </ul>
	      <% if(session.getAttribute("ValidMem") != null){ %>
		      <button class="btn btn-outline-success mr-2" onclick="location.href='member/modifymember.jsp'">회원정보 수정</button>
		      <button class="btn btn-outline-success" onclick="location.href='logout.jsp'">로그아웃</button>
	      <%}else { %>
	     	 <button class="btn btn-outline-success" onclick="location.href='index.jsp'">로그인</button>
	      <%} %>
		</div>
	</div>
</nav>


