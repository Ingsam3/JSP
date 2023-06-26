<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>   

<%-- 사용자가 입력한 값 받아와서  DB에 저장하는 페이지 저장 되면 완료 경고창 뜸--%>

<%

	request.setCharacterEncoding("UTF-8");         //method = post 방식으로 전달된 한글을 안깨지게 해준다.
	
	String bname = request.getParameter("bname");   //글쓴이
	String btitle = request.getParameter("btitle");   //글제목
	String bcont = request.getParameter("bcont");      //글내용
	
	String driver = "oracle.jdbc.OracleDriver";  //jdbc 라이브러리 *.jar로 부터 읽어온다. oracle.jdbc는 패키지 폴더명, OracleDriver는 오라클 jdbc드라이버 클래스명
	String url = "jdbc:oracle:thin:@localhost:1521:xe";  //오라클 접속 주소, 1521은 오라클 연결 포트번호, xe는 데이터베이스명
	String user = "day";   //오라클 연결 사용자
	String password = "day";   //오라클 사용자 비번
	
	Connection con = null;      //데이터 베이스 연결 con
	Statement stmt = null;      //쿼리문 수행
	String sql = null;         //쿼리문 저장

	 try {
	      Class.forName(driver); //jdbc드라이버 클래스 로드
	      con = DriverManager.getConnection(url, user, password); //메서드 인자값으로 db접속주소, 사용자, 비번을 전달해서 DB연결 후 con생성
	      stmt = con.createStatement(); //쿼리문 수행 할 stmt생성
	      
	      sql = "insert into boardT7 (bno, bname, btitle, bcont, bdate) values(bno_seq.nextval, '"+bname+"','"+btitle+"','"+bcont+"',sysdate)";
	      
	      int re = stmt.executeUpdate(sql); //insert, update, delete쿼리문은 executeUpdate()메서드를 사용하여 쿼리문을 수행, 수행 후 성공한 레코드 행의 개수 반환
	      
	      if (re == 1) {
	         out.println("<script>");
	         out.println("alert('방명록 저장에 성공했습니다~!');");
	         out.println("location='board_list.jsp';");
	         out.println("</script>");
	      }
	      
	   }catch(Exception e){e.printStackTrace();}
	   finally {
	      try {
	         if(stmt != null) stmt.close();
	         if(con != null) con.close();
	      }catch(Exception e){e.printStackTrace();}
	   }

%>




 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 저장</title>
</head>
<body>

</body>
</html>