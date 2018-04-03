<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>04/ input.jsp</title>
</head>
<body>

<h3>정보를 입력하세요</h3>

<form action="result.jsp" method="get">
이름 : <input type="text" name="name" size="10"> <br>
주소 : <input type="text" name="address" size="30"> <br>
좋아하는 동물 :
	<label><input type="checkbox" name="pet" value="dog"> 강아지</label>
	<label><input type="checkbox" name="pet" value="cat"> 고양이</label>
	<input id="id_pet_pig" type="checkbox" name="pet" value="pig"> 
	<label for="id_pet_pig">돼지</label>
	<br>
당신의 혈액형 : 
	<label><input type="radio" name="blood" value="A"> A형 </label>	
	<label><input type="radio" name="blood" value="B"> B형 </label>	
	<label><input type="radio" name="blood" value="AB"> AB형 </label>	
	<label><input type="radio" name="blood" value="O"> O형 </label>
	<br>	
<input type="submit" value="전송">
</form>

</body>
</html>