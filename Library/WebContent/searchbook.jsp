<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<%
	if(session.getAttribute("ValidMem") == null)
	{
%>
	<script language="javascript">
		alert("로그인 해주세요.");
		document.location.href="index.jsp";
	</script>
<%	}%>

<div class="layer">
	<form action="searchbook.do" method="post">
		<div class="form-group row">
			<label for="bid" class="w-100">도서 검색</label>
			<div class="col-8">
				<input type="text" class="form-control" name="search">
			</div>
			<div class="col-4">
				<select name="opt" class="form-control">
					<option value="bname">책 제목</option>
					<option value="writer">저자</option>
					<option value="publisher">출판사</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-success">검색</button>
			<button type="button" class="btn btn-success" onclick="location.href='main.jsp'">취소</button>
		</div>
	</form>
</div>

<!-- <div class=layer> 임시 주석
<nav class="navbar navbar-light bg-light">
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav><br>
	<table class="table" border="1">
		<tr>
			<th>서명</th><th>저자</th><th>출판사</th><th>청구기호</th>
		</tr>
		<tr>
			<td>자바시바로마</td><td>손준우</td><td>예담</td><td>A</td>
		</tr>
	</table>
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</div>  -->

<jsp:include page="footer.jsp"/>