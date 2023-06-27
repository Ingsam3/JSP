/*
 * 
 * package com.naver.dao;

import java.beans.Statement;
import java.sql.Driver;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.naver.vo.Member7vo;
import com.sun.jdi.connect.spi.Connection;

public class MemberDAOImpl {//오라클 DB연동 클래스
	
	String driver ="oracle.jdbc.driver.OracleDriver"; 
	//oracle.jdbc.driver :패키지 명 
	//.OracleDriver:jdbc 드라이버 클래스명
	
	String url ="jdbc:oracle:thin:$127.0.0.1:1521:xe";
	String user="day";
	String password ="day";
	

	Statement stmt =null; //쿼리문 수행
	Connection con=null;//DB변결con
	PreparedStatement pstmt=null; // 쿼리문 수행
    ResultSet rs = null; //검색 결과 자료를 저장할 rs
	String sql =null; //쿼리문 저장 변수
	
	//회원저장
	public int insertMember(Member7vo m) {
		int re =-1; //저장 실패시 반환값
		
		try {
			
			Class.forName(driver);
			stmt=con.createStatement();
			sql="insert into memberT values('"+m.getMem_id()+"','"+m.getMem_pwd(
					"','"+m.getMem_name()+"','"+m.getMem_phone()+"','"
			+m.getMem_email()+"')";
					
		} catch (Exception e) {
			e.printStackTrace();//예외 오류 족적을 남김
		
		
		}finally {
			try {
				if(stmt != null)stmt.close();
				if(con != null)con.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}return re;
		}//inserMember()
		
		public List<Member7vo> getMemList(){
			List<Member7vo> mlist = new ArrayList<>();
			
			try {
				Class.forName(driver);
				con=Driver.getConnection();
				sql="select *from memberT order by mem_id asc";
				//오른 차순 정렬
				
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()) {
					Member7vo m =new Member7vo();
					m.setMem_id(rs.getString("mem_id")); //mem_id 컬럼에 저장된 문자열 아이디를 가져와서 setter() 메서드에 저장
					m.setMem_pwd(rs.getString("mem_pwd")); //mem_id 컬럼에 저장된 문자열 아이디를 가져와서 setter() 메서드에 저장
					m.setMem_name(rs.getString("mem_name"));
					m.setMem_phone(rs.getString("mem_phone"));
					m.setMem_email(rs.getString("mem_email"));
					
					mlist.add(m);//컬렉션에 추가
				}
			}catch (Exception e) {
				
			}finally {
				try {
					if(rs != null)rs.close();
					if(pstmt != null)pstmt.close();
					if(con != null)con.close();
				} catch (Exception e) {
					
				}
				return mlist;
			}//getMemList
			
			public int getMemberCount() {
				//총 회원수
				int memberCount =0;
				
				try {
					Class.forName(driver);
					con=Driver.getConnection();
					sql="select count(mem_id) from memberT";
					pstmt=con.prepareStatement(sql);
					rs=pstmt.executeQuery();
					if(rs.next()) {//다음 레코드 행이 존재하면 참
						memberCount= rs.getInt(1);//총 회원 수 저장
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					try {
						if(rs !=null)rs.close();
						if(pstmt !=null)pstmt.close();
						if(con !=null)con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				return memberCount;
				
				
			}//getMemcount
			
		}
		
		
		
		return re;
	}//inserMember()
	
	

}
*/

