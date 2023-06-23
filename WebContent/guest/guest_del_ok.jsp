<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
<%
	/*문제 : 비번이 같으면 삭제되게 하고 비번이 다르면 alert('비번이 다릅니다'); 경고창 띄우고
	history.go(-1)을 사용해서 뒤로 한칸 이동한다 (history.back()과 같은 기능이다)
	delete 삭제 쿼리문 수행 후 성공한 레코드 행의 개수 1를 리턴 받아서 if 조건문으로 처리해서 
	jsp 내장 객체인 response.sendRedirect("guest_list.jsp")로 이동 되게 한다
	참조 소스파일 (guest_edit_ok.jsp)*/
	
	request.setCharacterEncoding("UTF-8");
	
	String del_pwd = request.getParameter("del_pwd"); //사용자 입력 삭제할 비번
	
	
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
		sql = "select gpwd from guestbook where gpwd=?";
		pstmt =con.prepareStatement(sql);
		pstmt.setString(1, del_pwd);
		
		rs=pstmt.executeQuery();
		
		
		//비밀번호 값 받아오기
		
		if(rs.next()){ //존재한다면
			
			if(!rs.getString("gpwd").equals(del_pwd)){ //같지 않다면
				out.println("<script>");
				out.println("alert('비번이 다릅니다');");
				out.println("history.go(-1);"); //뒤로 한 칸 이동
				out.println("</script>");
			}else{//같다면
				sql = "delete guestbook where gpwd=?";
				pstmt =con.prepareStatement(sql);
				pstmt.setString(1, del_pwd);
				int re = pstmt.executeUpdate() ; 
			      
			      if (re == 1) {
			         out.println("<script>");
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