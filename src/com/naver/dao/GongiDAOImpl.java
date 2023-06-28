package com.naver.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.naver.vo.GongiVO;
import com.naver.vo.Member7vo;

public class GongiDAOImpl {
	
	String driver="oracle.jdbc.driver.OracleDriver";//oracle.jdbc.driver는 패키지명, OracleDriv
	//er는 오라클 jdbc드라이버 클래스명
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";//오라클 접속주소, 1521은 포트번호,xe는 데이터베이
	//스명
	String user="day";//오라클 사용자
	String password="day";//오라클 사용자 비번
	
	Connection con=null;//데이터 베이스 연결 con
	PreparedStatement pstmt=null;//쿼리문 수행 pstmt
	Statement stmt=null;//쿼리문 수행 stmt
	ResultSet rs=null;//검색 결과 레코드를 저장할 rs
	String sql=null;//쿼리문 저장변수
	
	
	//공지 저장 메소드
		public int gongi_insert(GongiVO g) {
			int re=-1;//저장 실패시 반환값
			
			try {
				Class.forName(driver);
				con=DriverManager.getConnection(url, user, password);
				stmt=con.createStatement();//쿼리문을 수행할 stmt생성
				sql="insert into gongiT values('"+g.getG_name()+"','"+g.getG_title()+"','"+
						g.getG_pwd()+"','"+g.getG_cont()+"')";
				
				re=stmt.executeUpdate(sql);//insert문 수행후 성공한 레코드 행의 개수를 반환
				
			}catch(Exception e) {
				e.printStackTrace();//예외 오류 족적을 남김
			}finally {
				try {
					if(stmt != null) stmt.close();
					if(con != null) con.close();
				}catch(Exception e) {e.printStackTrace();}
			}
			return re;
		}//gongi_insert()
	

}
