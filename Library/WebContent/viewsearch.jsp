<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.book.*" %>     
<jsp:include page="header.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
int startpage = (int)request.getAttribute("startpage");
int totalpage = (int)request.getAttribute("totalpage");
int endpage = (int)request.getAttribute("endpage");
String keyword = request.getParameter("search");
String opt = request.getParameter("opt");
List<bookDTO> bookinfo = (List<bookDTO>)request.getAttribute("list");
%>

<div class="container">
	<table class="table table-hover mt-3">
		<tr>
			<th scope="col">책 제목</th>
			<th scope="col">저자</th>
			<th scope="col">위치</th>
			<th scope="col">수량</th>
			<th scope="col">설명</th>
			<th scope="col">출판사</th>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
		
		<%if(opt.equals("bname")){ %>
			<td style="color:red"><a href="viewbooks.jsp?id=${dto.bid}">${dto.bname}</a></td>
		<%}else{ %>
			<td><a href="viewbooks.jsp?id=${dto.bid}">${dto.bname}</a></td>
		<%}if(opt.equals("writer")){ %>
			<td style="color:red">${dto.writer}</td>
		<%}else{ %>
			<td>${dto.writer}</td>
		<%}%>
			<td>${dto.location}</td>
			<td>${dto.amount}</td>
			<td>${dto.comments}</td>
		<%if(opt.equals("publisher")){ %>	
			<td style="color:red">${dto.publisher}</td>
		<%}else { %>
			<td>${dto.publisher}</td>
		<%} %>
		</tr>
		</c:forEach>
	</table>

	<ul class="pagination justify-content-center mt-5">
	    
	<% if(startpage == 1) { %>
	
	<li class="page-item">
	  <a class="page-link" href="searchbook.do?page=1&search=<%=keyword%>&opt=<%=opt%> " tabindex="-1">Previous</a>
	</li>
	<%} else {%>
	<li class="page-item">
	  <a class="page-link" href="searchbook.do?page=<%=startpage-1 %>&search=<%=keyword%>&opt=<%=opt%>" tabindex="-1">Previous</a>
	</li>
	<%}%>
	<%
	for(int i=startpage; i<=endpage; i++){
	%> 
	<li class="page-item"><a class="page-link" href="searchbook.do?page=<%=i%>&search=<%=keyword%>&opt=<%=opt%>"><%=i%></a></li>
	<%}%>
	
	<% if(endpage != totalpage) endpage++;%>
	<li class="page-item">
	  <a class="page-link" href="searchbook.do?page=<%=endpage%>&search=<%=keyword%>&opt=<%=opt%>">Next</a>
	    </li>
	</ul>
</div>

<jsp:include page="footer.jsp"/>