<%@page import="com.study.member.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html lang="ko">
  <head> 
  </head>
  <body>
  	
  	<c:set var="msg">바란, 호날두, 이스코, 아센시오, 마르셀루, 베일, 크로스</c:set>
	<c:set var="msg2"><h4>최근 맨유에서 고전 중인 포그바가 콜롬비아와 평가전에서도 선발로 나서지 못할 것이다</h4>
			<b style="color:blue; font-size: 130%;">폴 포그바(맨체스터 유나이티드)의 입지</b>	
			<script>alert("뇌가 있다면 우리가 과도기라는 것 잘 알 것"); //location.href="http://sports.news.naver.com";</script>
	</c:set>
	
<pre>
${msg}


<c:forTokens items="${msg}" delims="," var="m" varStatus="st">
${st.count}, ${m}
</c:forTokens>

${msg2}

<c:out value="${msg2}" escapeXml="true" />

msg3=<c:out value="${msg3}" default="N/A" />


<c:set var="member" value='<%=new Member("hong", "길동", "1234", "020-123-4323", "hong@daum.net", 10)%>' />

<c:catch var="ex">
${member.mem_name}
${member.mem_id23}
${member.mem_pwd}
</c:catch>
휴~~~
</pre>  	

<c:if test="${not empty ex}">
	예외발생 : ${ex.message}
</c:if>
  	
  </body>
</html>