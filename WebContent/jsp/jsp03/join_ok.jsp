<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>2. request 객체 반환 예제</title>
		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		<script type="text/javascript">
			/*request 로 값 가져와서 표현식과 out.println() 으로 값 출력
			  input, button 사용해서  
			  javascript location 객체로 jspForm13.jsp로 이동되게 만들어 본다	
			*/
		</script>
	</head>
	<body>
	<form method="post" >
	 <%
	   request.setCharacterEncoding("UTF-8");//method=post전송방식으로 전달된 한글 데이터를 안깨지게 한다.
	   
	   String memId = request.getParameter("mem_id");
	   String memPass = request.getParameter("mem_pwd");
	   String memName = request.getParameter("mem_name");
	   String memP = request.getParameter("mem_phone");
	   String memE = request.getParameter("mem_email");
	   
	   out.println("회원아이디: "+memId+",비밀번호: "+memPass+",회원이름: "+memName
			   +",폰: "+memP+",이메일: "+memE+"<hr>");
	   
	 %>
		<!-- 다른 방법 -->
		다른 방법<br>
		이메일 : <%= request.getParameter("mem_email") %><hr>
		<input type="button" value=" 전송" onclick="location='ex01.jsp';">
	</form>
		
	</body>
</html>