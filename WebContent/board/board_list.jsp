<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.sql.*" %>   

<%
	String driver = "oracle.jdbc.OracleDriver";            //jdbc 라이브러리 *.jar로 부터 읽어온다. oracle.jdbc는 패키지 폴더명, OracleDriver는 오라클 jdbc드라이버 클래스명
	String url = "jdbc:oracle:thin:@localhost:1521:xe";      //오라클 접속 주소, 1521은 오라클 연결 포트번호, xe는 데이터베이스명
	String user = "day";   //오라클 연결 사용자
	String password = "day";   //오라클 사용자 비번

	Connection con=null;
	PreparedStatement pstmt=null; // 쿼리문 수행
	ResultSet rs = null; //검색 결과 자료를 저장할 rs
	String sql =null; //쿼리문 저장 변수
	
	try{
		Class.forName(driver);
		con=DriverManager.getConnection(url,user,password);
		sql="select * from boardT7 order by bno desc";
		pstmt =con.prepareStatement(sql);//
		rs=pstmt.executeQuery(); //slelct 문 수행 후 결과 레코드를 rs에 저장
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
	<table border="1">
		<tr>
			<th colspan="5">게시판 보기</th>
		</tr>
		<tr>
			<% int count=0;
			//sql="select bname from boardT7";
			//pstmt =con.prepareStatement(sql);
			//rs=pstmt.executeQuery();
			//count= Integer.parseInt(rs.getString(1));
			//sql="select count(bno_seq) from bno_seq";
			%>
			<!-- 카운트 셀렉트 , 변수에 담기 -->
			<th colspan="5">총 게시물 수 : <%=count %></th>
		</tr>
		<tr>
			<th>번호</th><th>글쓴이</th><th>글제목</th><th>조회수</th><th>등록날짜</th>
		</tr>
		<% while(rs.next()){ %>
		<tr>
			<th><%=rs.getInt(1) %></th>
			<th><%=rs.getString("bname") %></th>
			<th><a href="board_cont.jsp?no=<%=rs.getInt(1)%>"><%=rs.getString("btitle") %> </a></th>
			<th><%=rs.getInt("bhit") %></th>
			<th><%=rs.getString("bdate").substring(0,10) %></th>
		</tr>
	<% } %>	
		<tr>
			<th colspan="5">
				<input type="button" value="게시판 글쓰기" onclick="location='board_write.jsp';">
			</th>
		</tr>
	
	</table>






</body>
</html>

<%}catch(Exception e){
		e.printStackTrace();}
	
	finally{
		try {
	         if(rs != null) rs.close();
	         if(pstmt != null) pstmt.close();
	         if(con != null) con.close();
	      }catch(Exception e){e.printStackTrace();}
		
	}
%>
	