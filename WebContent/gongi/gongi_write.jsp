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
		------------------------------------------6.29 day56
	5.관리자 공지 목록 보기 gongi_list.jsp를 작성한다 ------------
	 GongiDAOImpl.java에 사용자 정의 메서드 작성
	 -> public List<GongiVO> getGongiList(){}	
	 
	6. 관리자 공지 내용보기 gongi_cont.jsp를 작성한다
	    GongiDAOImpl.java에 메서드 작성
	    public GongiVO getGongiCont(int gongijoin){
	    }
	    
	7. 관리자 공지 수정 폼 gongi_edit.jsp를 작성한다. 
	get 방식으로 gongi_edit.jsp?gongijoin=번호값이
	get으로 전달되면서 관리자 공지 수정폼 창이 나오면됨
	기존메서드 getGongiCont(int gongijoin){}을 활용한다
	
	8. 관리자 공지 수정 완료 gongi_edit_ok.jsp를 작성한다 
	비번이 같으면 수정, 다르면 '비번이 다릅니다' js 유효성 메시지를 띄운다
	수정완료 메서드
	public int updateGongi(int GongiVO eg){}
	
	9. 관리자 공지 삭제폼 gongi_del.jsp를 작성한다
	여기서는 비번 입력폼만 만들고, 비번을 입력하지 않았을 떄 유효성 검증 메세지(Validate) 
	'비번을 입력하세요' 출력
	
	10. 관리자 공지 삭제 완료 gongi_del_ok.jsp를 작성한다 
	비번이 다르면'비번이 다릅니다' 유효성 메세지 출력 ,
	비번이 같으면 삭제되게 한다. 
	삭제 완료 메서드
	public void delGongi(int gongijoin){}     	
		
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