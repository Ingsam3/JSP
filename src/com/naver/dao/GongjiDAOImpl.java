package com.naver.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.naver.vo.GongjiVO;

public class GongjiDAOImpl {//DB 연결 클래스

	String driver="oracle.jdbc.OracleDriver";//jdbc 라이브러리 *.jar로 부터 읽어옴. oracle.jdbc
	//는 패키지 폴더명,OracleDriver는 오라클 jdbc드라이버 클래스명
	 String url = "jdbc:oracle:thin:@localhost:1521:xe";//오라클 접속 주소, 1521은 오라클 연결 포트번호,
	//xe는 데이터베이스 명
	String user="day";//오라클 연결 사용자
	String password="day";//오라클 사용자 비번

	Connection con=null;//데이터 베이스 연결 con
	PreparedStatement pstmt=null;//쿼리문 수행
	ResultSet rs=null;//검색 결과 자료(레코드)를 저장할 rs
	String sql=null;//쿼리문 저장 변수

	//공지 저장
	public int gongji_insert(GongjiVO g){
		int re=-1;//저장 실패시 반환값

		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
			sql="insert into gongiT (g_no,g_name,g_title,g_pwd,g_cont) values(g_no_seq1.nextval,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,g.getG_name());
			pstmt.setString(2,g.getG_title());
			pstmt.setString(3,g.getG_pwd());
			pstmt.setString(4,g.getG_cont());

			re=pstmt.executeUpdate();

		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return re;    	
	}//gongji_insert()


	//공지 목록 
	public List<GongjiVO> getGongjiList(){
		List<GongjiVO> glist=new ArrayList<>();

		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);//db연결 con생성
			sql="select * from gongiT order by g_no desc";//공지 번호를 기준으로 내림차순 정렬
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();//select문 수행후 검색결과 레코드를 rs에 저장
			while(rs.next()) {//복수개의 레코드행이 검색되어서 while 반복문으로 처리
				GongjiVO g=new GongjiVO();
				g.setG_no(rs.getInt("g_no"));//g_no컬럼에 저장된 공지번호를 정수 숫자로 가져와서 setter
				//()메서드에 저장
				g.setG_name(rs.getString("g_name"));
				g.setG_title(rs.getString("g_title"));
				g.setG_hit(rs.getInt("g_hit"));
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
	}//getMemList()

	//관리자 공지 내용보기
	public GongjiVO getGongjiCont(int gongjino) {
		GongjiVO g=null;

		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,password);
			sql="select * from gongiT where g_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,gongjino);
			rs=pstmt.executeQuery();
			if(rs.next()) {//한개행 검색결과 레코드 값이 있을때는 if문으로 처리,next()메서드는 다음 레코드행이
				//존재하면 참
				g=new GongjiVO();
				g.setG_no(rs.getInt("g_no"));
				g.setG_name(rs.getString("g_name"));
				g.setG_title(rs.getString("g_title"));
				g.setG_pwd(rs.getString("g_pwd"));
				g.setG_cont(rs.getString("g_cont"));
				g.setG_hit(rs.getInt("g_hit"));
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
	}//getGongjiCont()
	
	//관리자 공지 수정
	public int updateGongji(GongjiVO eg) {
		int re=-1;//수정 실패시 반환값

		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
			sql="update gongiT set g_name=?,g_title=?,g_cont=? where g_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,eg.getG_name());
			pstmt.setString(2,eg.getG_title());			
			pstmt.setString(3,eg.getG_cont());
			pstmt.setInt(4,eg.getG_no());
			
			re=pstmt.executeUpdate();

		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return re;    	
	}//updateGongji()
	
	//관리자 공지 삭제
	public int delGongji(int gongjino) {
		int re=-1;//삭제 실패시 반환값

		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
			sql="delete from gongiT where g_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,gongjino);
			
			re=pstmt.executeUpdate();

		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return re;    	
	}//delGongji()
}










