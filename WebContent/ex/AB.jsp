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
<img src="../image/AB.jpg">
<h3>★ AB형</h3>
<p>1. 두뇌회전이 빠르다.</p>
<p>2. 낯을 많이 가린다.</p>
<p>3. 바보 아니면 천재 둘 중 하나다.</p>
<p>4. 자신의 속마음을 들키기 싫어한다.</p>
<p>5. 논리적이며 계산적이다.</p>
<p>6. 어디에 얽매이는 거 싫어한다.</p>
<p>7. 표현을 잘 못한다.</p>
<p>8. 끈기는 조금 약한 편이다.</p>
<p>9. 엉뚱한 생각을 많이 한다.</p>
<p>10. 자기관리를 잘하고 실수를 잘 안한다.</p> 

</body>
</html>