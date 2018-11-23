<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="header.jsp"/>

<% if(session.getAttribute("ValidMem") == null){ %>
<form action="login.do" method="post">
	<div class="form-signin text-center">
		<label for="id" class="sr-only">ID</label>
		<input type="text" id="id" name="id" class="form-control" placeholder="ID를 입력하세요." required autofocus>
		<label for="password" class="sr-only">패스워드</label>
		<input type="password" id="password" name="password" class="form-control" placeholder="패스워드를 입력하세요." required>
		<div class="checkbox mb-3">
			<label>
				<input type="checkbox" value="remember-me"> ID 저장하기
			</label>
		</div>
		<button type="submit" class="btn btn-primary btn-block">로그인</button>
		<button type="button" class="btn btn-primary btn-block" onclick="javascript:window.location='./member/join.jsp'">회원가입</button>
		<p class="mt-5 mb-3 text-muted">&copy; 2018</p>
	</div>
</form>
<%}else { %>
<div class="form-signin text-center">
	<button class="btn btn-outline-primary" onclick="location.href='member/modifymember.jsp'">회원정보 수정</button>
	<button class="btn btn-outline-primary" onclick="location.href='logout.jsp'">로그아웃</button>
	
	<p class="mt-5 mb-3 text-muted">&copy; 2018</p>
</div>

<%} %>

<jsp:include page="footer.jsp"/>