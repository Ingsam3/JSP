<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 
1. 게시판 글쓴이, 글제목, 글 내용만 입력할 수 있는 입력 폼 작성
2. 각 입력폼 내용 유무에 따른 유효성 검증 메세지 띄우는 코드 작성 
3. 게시판 저장 테이블 boardT7을 생성한다. 
4. 컬럼 : 컬럼명    자료형         크기             제약조건                  
		bno  number   38     primary key   게시판 번호(bno_seq으로 부터 번호값 가져옴)
		bname varchar2 30   not null       글쓴이
		btitle varchar2 200 not null       글제목
		bcont varchar2  400 not null       글 내용
		bhit int            default 0             조회수
		bdate date        default sysdate 등록날짜   
		
5.bno_seq 시퀀스 생성 (1부터 시작, 1씩 증가, 임시메모리 사용하지 않게 함)	
6. 게시판이 저장되는 board_write_ok.jsp 작성
7. 게시판 목록은 board_list.jsp로 작성- 총 게시물 수가 제목 위에 출력되게 만든다 ****못 품
8. 게시판 조회수 증가와 내용보기 board_cont.jsp를 작성한다
9. 게시판 수정폼 board_edit.jsp를 작성하고 수정 완료되게 borad_edit_ok.jsp를 작성한다
       게시판 수정 완료에서 비번판단 없음
10. board_cont.jsp 하단의 삭제 버튼을 누르면 번호를 기준으로 바로 삭제되게 board_del.jsp 작성
        삭제 되기 전에 confirm() 내장함수 사용해서 삭제 유무 인지 판단	 	
 --%>    
 
 <%-- 삭제 시 경고창 안 뜸, 총 게시물 수  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1. 게시판</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/boarder.js"></script>
</head>
<body>
	<form action="borad_write_ok.jsp" method="post" onsubmit="return board_check();">
		<table border=1>
			<tr>
			 <th colspan="2">게시판</th>
			</tr>
			<tr>
			 <th>글쓴이</th>
			 <td><input type="text" name="bname" id="bname" size="14"></td>
			</tr>
			<tr>
			 <th>글제목</th>
			 <td><input type="text" name="btitle" id="btitle" size="30"></td>
			</tr>
			<tr>
				<th>글내용</th>
				<td>
					<textarea name="bcont" id="bcont" rows="10" cols="38"></textarea>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="전송">
					<input type="reset" value="취소" onclick="$('#bname').focus();">
				</th>
			</tr>
		
		
		</table>
	
	
	</form>

</body>
</html>