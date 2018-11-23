<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.book.*" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>

<%
	String id = request.getParameter("id");
	bookDAO dao = bookDAO.getInstance();
	bookDTO dto = dao.getInfobook(id);
%>  
<div class="layer">

<form> <!--  enctype="multipart/form-data">-->
  <div class="form-group">
    <label for="exampleFormControlInput1">도서명</label>
    <input type="text" class="form-control" name="bname" value="<%=dto.getBname() %>">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">저자</label>
    <input type="text" class="form-control" name="writer" value="<%=dto.getWriter() %>">
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlSelect2">출판사</label>
   	<input type="text" class="form-control" name="publisher" value="<%=dto.getPublisher()%>">
  </div>
  
   <div class="form-group">
    <label for="exampleFormControlSelect2">위치</label>
   	<input type="text" class="form-control" name="location" value="<%=dto.getLocation()%>">
  </div>
  
   <div class="form-group">
    <label for="exampleFormControlSelect2">수량</label>
   	<input type="text" class="form-control" name="amount" value="<%=dto.getAmount()%>">
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">설명</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" cols="60" name="comments"><%=dto.getComments()%></textarea>
  </div>
  
 	<br>
	<button type="button" class="btn btn-danger" onclick="history.back()">돌아가기 </button>
</form>
</div> 
   
<jsp:include page="footer.jsp"/>