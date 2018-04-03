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
<img src="../image/O.jpg">
<h3>★ O형</h3>
<p>1. 칭찬에 약하다.</p>
<p>2. 대인관계가 원만하다.</p>
<p>3. 모든 일에 적극적이고 리더십이 있다.</p>
<p>4. 자기자랑을 잘한다.</p>
<p>5. 부탁하는 것에 약하다.</p>
<p>6. 사랑에 잘 빠진다.</p>
<p>7. 남의 흉을 진보는 타입이다.</p>
<p>8. 소유욕이 강한 편이다.</p>
<p>9. 굉장히 솔직한 타입이다.</p>
<p>10. 누구에게 지는걸 싫어한다.</p>

</body>
</html>