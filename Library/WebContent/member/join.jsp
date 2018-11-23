<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href = "../bootstrap/css/bootstrap.min.css"/>
<style>
  .layer{
   position:absolute;
   top:50%;
   left:50%;
   transform:translate(-50%, -50%)
  }
 </style>

<script language="JavaScript" src="members.js" ></script>
</head>
<body>
<div class=layer>
<form action="../join.do" method="post" name="reg_frm">
  <div class="form-group">
    <label for="exampleFormControlInput1">ID</label>
    <input type="text" class="form-control" name="id">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">패스워드</label>
    <input type="password" class="form-control" name="password">
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlSelect2">패스워드 확인</label>
   	<input type="password" class="form-control" name="pcheck">
  </div>
  
   <div class="form-group">
    <label for="exampleFormControlSelect2">성명</label>
   	<input type="text" class="form-control" name="name">
  </div>
  
   <div class="form-group">
      <label for="exampleFormControlSelect2">성별</label>
      <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="sex">
        <option value="man">man</option>
        <option value="girl">girl</option>
     </select>
    </div>
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">설명</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" cols="60" name="a"></textarea>
  </div>
  <input type="submit" name ="sub" value="가입" onclick="infoConfirm()" >
  <input type="reset" value="취소" onclick="javascript:window.location='../index.jsp'">
 </form>
 </div>
</body>
</html>