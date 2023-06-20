<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9. jsp:include 값 전달 </title>
</head>
<body>
	<table width="100%" border="1">
		<tr>
			<th>제품번호</th> <th>1024</th>
		</tr>
		<tr>
			<th>가격</th> <th>10,000원</th>
		</tr>
	</table>

	<jsp:include page ="infosub.jsp"> 
	<jsp:param name ="type" value="A"/> 
	</jsp:include>
	<%-- type 파라미터 이름에 A를 담아서 전달함 --%>
	
</body>
</html>