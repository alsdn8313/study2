<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>09/ A.jsp</title>
</head>
<body>
이름 : <%=request.getParameter("name") %> <br>
주소 : <%=request.getParameter("address") %> <br>
혈액형 : <%=request.getParameter("blood") %> <br>
좋아하는 동물 : <%=request.getParameter("pet") %> <br>
<hr>
<!-- DB 또는 웹서비스를 활용해서 해당 A 유명인을 검색해서 출력 -->
<% 
List<Float> f = (List<Float>)request.getAttribute("famous");
%>
유명인 :
<%
	for(Float n : f) {
		out.println(n + ",");
	}
%>
<hr>
<img src="../image/A.jpg">
<h3>★ A형</h3>
<p>1. 다정다감하고 배려를 할 줄 안다.</p>

<p>2. 상처를 잘 받고 소심한 면이 있다.</p>

<p>3. 호불호가 확실하다.</p>

<p>4. 혼자 있고 소외감 느끼는 걸 싫어함.</p>

<p>5. 인내심이 많고 상대의 이야기를 잘 들어줌.</p>

<p>6. 평소 걱정이 많고 생각이 깊다.</p>

<p>7. 거절을 잘 못한다.</p>

<p>8. 외로움을 잘 타고 혼자 있는 거 싫어한다.</p>

<p>9. 웃음도 많고 눈물도 많다.</p>

<p>10. 참는 성격이지만 폭발하면 무섭다.</p>

</body>
</html>