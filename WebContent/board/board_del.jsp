<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
<%
	
	request.setCharacterEncoding("UTF-8");
	
	int no = Integer.parseInt(request.getParameter("no"));// 받아온 번호 값
	
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
		con=DriverManager.getConnection(url,user,password);
		sql = "select bno from boardT7 where bno=?";
		pstmt =con.prepareStatement(sql);
		pstmt.setInt(1, no);
		
		rs=pstmt.executeQuery();
		
		
		if(rs.next()){ //존재한다면
				sql = "delete from boardT7 where bno=?";
				pstmt =con.prepareStatement(sql);
				pstmt.setInt(1, no);
				int re = pstmt.executeUpdate() ; 
			      
			      if (re == 1) {
			        response.sendRedirect("board_list.jsp");
			      }
			}
		
	 
	
		
   } catch(Exception e){e.printStackTrace();}
	finally{
		 try {
			 if(rs != null) rs.close();
	         if(pstmt != null) pstmt.close();
	         if(con != null) con.close();
	      }catch(Exception e){e.printStackTrace();}
	}
	
	



%>