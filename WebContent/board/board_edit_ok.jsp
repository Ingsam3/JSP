<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	int bno = Integer.parseInt(request.getParameter("bno"));
	String bname = request.getParameter("bname"); //수정할 이름
	String btitle = request.getParameter("btitle"); //수정할 제목
	String bcont = request.getParameter("bcont"); //수정할 내용

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
					
			sql= "update boardT7 set bname =?, btitle=?, bcont=? where bno=? ";
			pstmt =con.prepareStatement(sql); // 수정할 객체 생성
			pstmt.setString(1, bname); //각 인덱스에 문자열로 수정할 요소 저장
			pstmt.setString(2, btitle);
			pstmt.setString(3, bcont);		
			pstmt.setInt(4, bno);	//where문까지도 입력해야 함	
			
				  int re = pstmt.executeUpdate() ; 
					//수정 쿼리문 수행 후 성공한 레코드 행의 개수를 반환
					//insert, update, delete쿼리문은 executeUpdate()메서드를 사용하여 쿼리문을 수행, 수행 후 성공한 레코드 행의 개수 반환
				      
				    if (re == 1) {
				       out.println("<script>");
				       out.println("alert('게시판 수정에 성공했습니다');");
				       out.println("location='guest_list.jsp';");
				       out.println("</script>");	
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