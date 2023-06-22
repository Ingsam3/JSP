<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	//get 으로 전달된 번호값을 정수 숫자로 변경
	
   String driver = "oracle.jdbc.OracleDriver";  //jdbc 라이브러리 *.jar로 부터 읽어온다. oracle.jdbc는 패키지 폴더명, OracleDriver는 오라클 jdbc드라이버 클래스명
   String url = "jdbc:oracle:thin:@localhost:1521:xe";  //오라클 접속 주소, 1521은 오라클 연결 포트번호, xe는 데이터베이스명
   String user = "day";   //오라클 연결 사용자
   String password = "day";   //오라클 사용자 비번
   
   Connection con=null;
   PreparedStatement pstmt=null; // 쿼리문 수행
   ResultSet rs = null; //검색 결과 자료를 저장할 rs
   String sql =null; //쿼리문 저장 변수


   try{
	   Class.forName(driver);
		con =DriverManager.getConnection(url,user,password);
		sql = "select *from guestbook where gno=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, no); // 인덱스 1번 위치에 no 값 검색
		rs=pstmt.executeQuery();
		
		if(rs.next()){
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6. 방명록 수정폼 </title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/guest.js"></script>

</head>
<body>
	<form method="post" action="guest_edit_ok.jsp" onsubmit="return check();">
	<input type="hidden" name="gno" value="<%=no%>">
	<%-- hidden은 브라우저 주소창에서 만들어지지 않지만 gno name 파라미테 이름에 value 속성값을 
	담아서 전달할 때 융요하다 이때 전달되는 번호값은 문자열 타입이다. 하지만 페이지 소스에서는 노출된다
	따라서 보안상 중요한 비번같은 데이터는 hiddden으로 전달하지 않는다--%>
		<table border="1">
			<tr>
				<th colspan="2">방명록 수정폼</th>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td><input name="gname" id="gname" size="14"value="<%=rs.getString("gname")%>"></td>

			</tr>
			<tr>
				<th>글제목</th>
				<td><input name="gtitle" id="gtitle" size="36" value="<%=rs.getString("gtitle")%>"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="gpwd" id="gpwd" size="14"></td>
			</tr>
			<tr>
				<th>글내용</th>
				<td><textarea name="gcont" id="gcont" rows="10" cols="38">
				<%=rs.getString("gcont") %>
				</textarea></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="방명록 수정 ">
					<input type="reset" value="취소" onclick="$('#gname').focus();">
				</th>
			</tr>
		</table>
	</form>
</body>
</html>

<%}
   } catch(Exception e){e.printStackTrace();}
	finally{
		 try {
			 if(rs != null) rs.close();
	         if(pstmt != null) pstmt.close();
	         if(con != null) con.close();
	      }catch(Exception e){e.printStackTrace();}
	}

%>


