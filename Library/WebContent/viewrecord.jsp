<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.book.*" %>
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	if(session.getAttribute("ValidMem") == null)
	{
%>
	<script language="javascript">
		alert("로그인 해주세요.");
		history.go(-1);
	</script>
<%	}%>	

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


<%
int startpage = (int)request.getAttribute("startpage");
int totalpage = (int)request.getAttribute("totalpage");
int endpage = (int)request.getAttribute("endpage");
String opt = (String)request.getAttribute("opt");
%>
    
<div class="container">
<form action="recordbook.do">
<div class="d-flex">
      <select name="opt" class="custom-select col-2 d-flex ml-auto mt-3 md-3">
         <option selected>정렬 기준</option>
         <option value="bname">책 이름(ㄱ부터)</option>
         <option value="bname DESC">책 이름(ㅎ부터)</option>
         <option value="writer">저자(ㄱ부터)</option>
         <option value="writer DESC">저자(ㅎ부터)</option>
         <option value="publisher">출판사(ㄱ부터)</option>
         <option value="publisher DESC">출판사(ㅎ부터)</option>
     <!--<option value="rental">상태(ㄱ부터)</option>
         <option value="return">상태(ㅎ부터)</option>-->
     </select>
      	&nbsp;
      	<input type="submit" class="btn btn-success" value="검색">
</div>      
</form>      


<table class="table table-hover mt-3">
		<tr>
			<th scope="col">책ID</th>
			<th scope="col">책이름</th>
			<th scope="col">저자</th>
			<th scope="col">출판사</th>
			<th scope="col">상태</th>
			<th scope="col">변동날짜</th>
			<th scope="col">맴버</th>
		</tr>
      <c:forEach items="${list}" var="dto">
      <tr>
         <td>${dto.bid}</td>
         <td>${dto.bname}</td>
         <td>${dto.writer}</td>
         <td>${dto.publisher}</td>
        
        	<c:if test="${dto.state eq 'return'}"> 
         		<td style="color:red">${dto.state}</td>
         	</c:if>
         	<c:if test="${dto.state eq 'rental'}"> 
         		<td style="color:green">${dto.state}</td>
         	</c:if>
        <td>${dto.date}</td>
        <td>${dto.member}</td>
      </tr>
      </c:forEach>
</table><br><br>

   
<ul class="pagination justify-content-center mt-5">
    
    <% if(startpage == 1) { %>

    <li class="page-item">
      <a class="page-link" href="recordbook.do?page=1&opt=<%=opt %>" tabindex="-1">Previous</a>
    </li>
    <%} else {%>
    <li class="page-item">
      <a class="page-link" href="recordbook.do?page=<%=startpage-1 %>&opt=<%=opt %>" tabindex="-1">Previous</a>
    </li>
    <%}%>
    <%
       for(int i=startpage; i<=endpage; i++){
    %> 
          <li class="page-item"><a class="page-link" href="recordbook.do?page=<%=i%>&opt=<%=opt %>"><%=i%></a></li>
       <%}%>
    
    <% if(endpage != totalpage) endpage++;%>
    <li class="page-item">
      <a class="page-link" href="recordbook.do?page=<%=endpage%>&opt=<%=opt %>">Next</a>
    </li>
  </ul>
 </div>   


<jsp:include page="footer.jsp"></jsp:include>