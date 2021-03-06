<%@page import="com.study.member.vo.Member"%>
<%@page import="java.util.List"%>
<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>타이틀을 입력하세요!!</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
  </head>  
<body>
<div class="container">
<div class="page-header">
	<h2>회원 목록</h2>
</div>
<div class="row">
	<div class="col-md-4 col-md-offset-8  text-right">
		<a href="memberForm.jsp" class="btn btn-sm btn-primary">회원등록</a>	
	</div>
</div>
<%
	MemberServiceImpl memberService = new MemberServiceImpl();
	List<Member> list = memberService.getMemberList();
	request.setAttribute("members", list);
%>

<div class="row">
<table class="table table-striped">
	<thead>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>가입일</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${empty members}">
			<tr>
				<td colspan="5">목록이 조회되지 않았습니다.</td>
			</tr>
		</c:if>
		
		<c:if test="${! empty members}">
			<c:forEach var="members" items="${members}" varStatus="st">
				<tr>
				<td>${members.mem_id}</td>
				<td><a href="memberView.jsp?mem_id=${members.mem_id}">
						${members.mem_name}
						</a></td>
				<td>${members.mem_name}</td>
				<td>${members.mem_phone}</td>
				<td>${members.mem_email}</td>
				<td>${members.reg_date}</td>
				</tr>
			</c:forEach>
		</c:if>
		
		
	</tbody>
</table>
</div>

</div>
</body>
</html>














