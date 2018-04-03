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
<img src="../image/B.jpg">
<h3>★ B형</h3>
<p>1. 감정을 숨기지를 못한다.</p>
<p>2. 개성이 강하고 자기중심적.</p>
<p>3. 성격이 긍정적 이고 낙천적이다.</p>
<p>4. 좋으면 좋고 싫으면 싫다.</p>
<p>5. 자존심이 무지하게 세다.</p>
<p>6. 유머와 장난기가 많아 인기가 있다.</p>
<p>7. 두뇌가 명석하다.</p>
<p>8. 호기심이 많은 편이다.</p>
<p>9. 모든지 말보다 행동으로 옮긴다.</p>
<p>10. 자기가 관심 있는 분야 에서는 최고로 잘 안다.</p>


</body>
</html>