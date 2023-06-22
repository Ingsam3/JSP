<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	int gno = Integer.parseInt(request.getParameter("gno"));
	String gname = request.getParameter("gname"); //수정할 이름
	String gtitle = request.getParameter("gtitle"); //수정할 제목
	String gpwd = request.getParameter("gpwd"); //수정할 비번
	String gcont = request.getParameter("gcont"); //수정할 내용

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
			sql = "select gpwd from guestbook where gno=?";
			//번호를 기준으로 해당 테이블 컬럼으로부터 비번 검색
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, gno);
			rs=pstmt.executeQuery();
			if(rs.next()){ //비번이 있을 경우
				if(!rs.getString("gpwd").equals(gpwd)){//비번이 다르면
					out.println("<script>");
					out.println("alert('비번이 다릅니다');");
					out.println("history.back();"); //뒤로 한 칸 이동
					out.println("</script>");
				}else{
					/*문제 : 
					비번이 같으면 번호를 기준으로 글쓴이, 글제목, 글내용만 수정되게 update 쿼리문 수행 후 
					리턴 값 1을 받아서
					if 조건문으로 '방명록 수정되었습니다'라는 
					alert()경고창 띄운다음 
					방명록 목록보기로 이동되게 만들자*/
					
					sql= "update guestbook set gname =?, gtitle=?, gcont=? where gno=? ";
					pstmt =con.prepareStatement(sql); // 수정할 객체 생성
					pstmt.setString(1, gname); //각 인덱스에 문자열로 수정할 요소 저장
					pstmt.setString(2, gtitle);
					pstmt.setString(3, gcont);		
					pstmt.setInt(4, gno);	//where문까지도 입력해야 함	
			
				    int re = pstmt.executeUpdate() ; 
					//수정 쿼리문 수행 후 성공한 레코드 행의 개수를 반환
					//insert, update, delete쿼리문은 executeUpdate()메서드를 사용하여 쿼리문을 수행, 수행 후 성공한 레코드 행의 개수 반환
				      
				      if (re == 1) {
				         out.println("<script>");
				         out.println("alert('방명록 저장에 성공했습니다');");
				         out.println("location='guest_list.jsp';");
				         out.println("</script>");
				      }
					
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