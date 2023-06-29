package com.naver.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.naver.vo.GongiVO;
import com.naver.vo.Member7VO;

public class GongiDAOImpl {
	
	String driver = "oracle.jdbc.OracleDriver";  //jdbc 라이브러리 *.jar로 부터 읽어온다. oracle.jdbc는 패키지 폴더명, OracleDriver는 오라클 jdbc드라이버 클래스명
	String url = "jdbc:oracle:thin:@localhost:1521:xe";  //오라클 접속 주소, 1521은 오라클 연결 포트번호, xe는 데이터베이스명
	String user = "day";   //오라클 연결 사용자
	String password = "day";   //오라클 사용자 비번
	
	
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
				
				sql="insert into gongiT values(g_no_seq1.nextval, '"+g.getG_name()+"','"+g.getG_title()+"','"+g.getG_pwd()+"','"+g.getG_cont()+"','"+g.getG_hit()+"',sysdate)";
				
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
		
		//관리자 공지 목록 보는 메서드
		public List<GongiVO> getGongiList(){
			List<GongiVO> glist=new ArrayList<>();
			
			try {
				Class.forName(driver);
				con=DriverManager.getConnection(url, user, password);//db연결 con생성
				sql="select * from gongiT order by g_no asc";//아이디를 기준으로 오름차순 정렬(알파벳순으
				//로 정렬)
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();//select문 수행후 검색결과 레코드를 rs에 저장
				while(rs.next()) {//복수개의 레코드행이 검색되어서 while 반복문으로 처리
					GongiVO g=new GongiVO();
					
					g.setG_no(Integer.parseInt(rs.getString("g_no")));
					g.setG_name(rs.getString("g_name"));
					g.setG_title(rs.getString("g_title"));
					g.setG_pwd(rs.getString("g_pwd"));
					g.setG_cont(rs.getString("g_cont"));
					g.setG_hit(Integer.parseInt(rs.getString("g_hit")));
					g.setG_date(rs.getString("g_date"));
			
					glist.add(g);//컬렉션에 추가
				}
			}catch(Exception e) {e.printStackTrace();}
			finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(con != null) con.close();
				}catch(Exception e) {e.printStackTrace();}
			}
			return glist;
		}	//getGongiList
		
		//총 공지수
		public int getGongiCount() {
			int gongiCount=0;//총 회원수
			
			try {
				Class.forName(driver);
				con=DriverManager.getConnection(url, user, password);
				sql="select count(g_no) from gongiT";
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
				if(rs.next()) {//다음 레코드 행이 존재하면 참
					gongiCount = rs.getInt(1);//총 회원수 저장
				}
			}catch(Exception e) {e.printStackTrace();}
			finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(con != null) con.close();
				}catch(Exception e) {e.printStackTrace();}
			}
			return gongiCount;
		
		}//getGongiCount()
		
		//공지 내용보기 메서드
		public GongiVO getGongiCont(int gongino){
		
		//작성자이름이 가진  찾기 sql- 맞는 리스트에 넣어서 	-cont에서 가져오기
			GongiVO g=null;
	         
	         try {
	        	 Class.forName(driver);
	        	 con=DriverManager.getConnection(url,user,password);
	        	 sql="select * from gongiT where g_no=?";
	        	 pstmt=con.prepareStatement(sql);
	        	 pstmt.setInt(1,gongino);
	        	 rs=pstmt.executeQuery();
	        	 
	        	 if(rs.next()) {//한개행 검색결과 레코드 값이 있을때는 if문으로 처리,next()메서드는 다음 레코드행이
	        		 //존재하면 참
	        		 g=new GongiVO();
	        		 g.setG_no(Integer.parseInt(rs.getString("g_no")));
	        		 g.setG_name(rs.getString("g_name"));
	        		 g.setG_title(rs.getString("g_title"));
	        		 g.setG_pwd(rs.getString("g_pwd"));
	        		 g.setG_cont(rs.getString("g_cont"));
	        		 g.setG_hit(Integer.parseInt(rs.getString("g_hit")));
	        		 g.setG_date(rs.getString("g_date"));
	        		
	        	 }
	         }catch(Exception e) {e.printStackTrace();}
	         finally {
	        	 try {
	        		 if(rs != null) rs.close();
	        		 if(pstmt != null) pstmt.close();
	        		 if(con != null) con.close();
	        	 }catch(Exception e) {e.printStackTrace();}
	         }
	         return g;
		
	    }//getGongiCont
	

}
