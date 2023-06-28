<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성폼</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/gongi.js"></script>
</head>
<body>
<%-- 1.관리자 공지 작성자, 공지제목, 비밀번호, 공지내용을 입력할 수 잇는 사용자 입력 폼작성
		자바스크립트와 제이쿼리를 사용해서 유효성 검증 메시지도 함께 띄운다
		네임 파라미터 이름은 g_name,g_title,g_pwd,g_cont로 한다.
		
		아이디 선택자로 파라미터 이름과 같게 한다.
	2. gongiT 공지 테이블 작성
		g_no int primary key,
		g_name varchar2(20) not null,			
		g_title varchar2(200) not null,			
		g_pwd varchar2(20) not null,			
		g_cont varchar2(4000) not null,		
		g_hit int default 0 ,
		g_date date default sysdate
		
	3.시퀀스 작성 g_no_seq
	1부터 시작, 1씩증가, 임시메모리 사용하지 않음		
	
	4. com.naver.vo 패키지에 데이터 저장빈 클래스
		GongiVO.java를 작성하고, com.naver.dao 패키지에
		GongiDAOImpl.java를 작성한다. 
		공지 저장 파일 gongi_write_ok.jsp를 작성하고 저장 메서드로 다음과 같이 정의한다.
		public int gongi_insert(GonjiVO g){}
		
 --%>
 
<form method="post" action=" gongi_write_ok.jsp" onsubmit="return gongi_check();">
	<table border="1">
		<tr>
			<th colspan="2">공지 작성폼</th>
		</tr>
		<tr>
			<th>공지 작성자</th>
			<td><input type="text" name="g_name" id="g_name" size="14"></td>
		</tr>
		<tr>
			<th>공지제목</th>
			<td><input type="text" name="g_title" id="g_title" size="14"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="g_pwd" id="g_pwd" size="14"></td>
		</tr>
		<tr>
			<th>공지내용</th>
			<td>
			<textarea rows="10" cols="30" name="g_cont" id="g_cont"></textarea>
			</td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="공지작성">
				<input type="reset" value="가입취소" onclick="$('#g_name').focus();">
			</th>	
		</tr>
	
		
	
	
	
	</table>



</form>
</body>
</html>