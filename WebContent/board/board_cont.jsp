<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>     
<%
	int no = Integer.parseInt(request.getParameter("no"));
	//*jsp?no 의 문자열 값을 정수로 변환 
		
   String driver = "oracle.jdbc.OracleDriver";  //jdbc 라이브러리 *.jar로 부터 읽어온다. oracle.jdbc는 패키지 폴더명, OracleDriver는 오라클 jdbc드라이버 클래스명
   String url = "jdbc:oracle:thin:@localhost:1521:xe";  //오라클 접속 주소, 1521은 오라클 연결 포트번호, xe는 데이터베이스명
   String user = "day";   //오라클 연결 사용자
   String password = "day";   //오라클 사용자 비번
   
   Connection con=null;
   PreparedStatement pstmt=null; // 쿼리문 수행
   ResultSet rs = null; //검색 결과 자료를 저장할 rs
   String sql =null; //쿼리문 저장 변수


%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용 보기</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/boarder.js"></script>

</head>
<body>
<%try{
	Class.forName(driver);
	con =DriverManager.getConnection(url,user,password);
	//sql="update guestbook set ghit=ghit+1 where gno=?";//?는 임의의 모르는 값
    sql = "update boardT7 set bhit=bhit+1 where bno=?";
	//번호를 기준으로 조회수 증가
	pstmt=con.prepareStatement(sql);
	pstmt.setInt(1, no);
	//1은 쿼리문의 첫번째 물음표라는 의미. 즉, 쿼리문의 첫번째 물음표에 정수 숫자로 번호값을 저장
	pstmt.executeUpdate();//수정 쿼리문 수행
	
	sql="select * from boardT7 where bno=?";
 //번호값을 기준으로 방명록 검색
	pstmt=con.prepareStatement(sql);
	pstmt.setInt(1, no);
	rs=pstmt.executeQuery();//slect문 수행 후 검색 결과 레코드를 rs에 저장
	if(rs.next()){//검색되는 레코드가 하나이기 때문에 if문으로 처리	

%>
<table border="1">
	<tr>
		<th colspan="2">게시판 내용 보기</th>
	</tr>
	<tr>
		<th>글제목</th>
		<td><%=rs.getString("btitle") %></td>
	</tr>
	<tr>
		<th>글내용</th>
		<td><%=rs.getString("bcont").replace("\n", "<br>") %></td>
	</tr>
	<tr>
		<th>조회수</th>
		<td><%=rs.getInt("bhit")%></td>
	</tr>
	<tr>
		<th colspan="3">
			<input type="button" value="수정" 
				onclick="location='board_edit.jsp?no=<%=rs.getInt("bno")%>';">
				
				<input type="button" value="삭제" 
				onclick="location='board_del.jsp?no=<%=rs.getInt("bno")%> ';">
				
			 <input type="button" value="목록" onclick="location='board_list.jsp'">
		</th>
	</tr>


</table>
<% 	   }//if문 end
	} catch(Exception e){e.printStackTrace();}
		finally{
			 try {
				 if(rs != null) rs.close();
		         if(pstmt != null) pstmt.close();
		         if(con != null) con.close();
		      }catch(Exception e){e.printStackTrace();}
		}

%>
</body>
</html>