<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>09/ result.jsp</title>
</head>
<body>
이름 : <%=request.getParameter("name") %> <br>
주소 : <%=request.getParameter("address") %> <br>
혈액형 : <%=request.getParameter("blood") %> <br>
좋아하는 동물 : <%=request.getParameter("pet") %> <br>

<%
String goPage = "";
String blood = request.getParameter("blood");
if(blood == null || blood.equals("")) {
	response.sendRedirect("input.jsp");
	return;
}

// DB 또는 웹서비스를 활용해서 해당 유명인을 검색
List<Float> famous = new ArrayList<Float>();

switch(blood){
case "A" : goPage = "/ex/A.jsp";
           famous.add(112.12f);					
           famous.add(123.12f);					
           famous.add(432.12f);					
           famous.add(234.22f);					
           break;
case "B" : goPage = "/ex/B.jsp"; 
           famous.add(234.12f);
           famous.add(234.12f);
           famous.add(123.12f);
           break;
case "AB" : goPage = "/ex/AB.jsp";
            famous.add(34.12f);          
            famous.add(543.34f);          
            famous.add(345.67f);          
            break;
case "O" : goPage = "/ex/O.jsp"; 
           famous.add(34.87f); 
           famous.add(345.09f); 
           famous.add(34.76f); 
           break;
}
// 이동할 페이지에서 사용하기 위해 저장
request.setAttribute("famous", famous);
%>

<jsp:forward page="<%=goPage%>" />

<hr>
<pre>
if (A형) {


}else if(B형) {

}else if(AB형) {

}else if(O형) {

}
</pre>
</body>
</html>