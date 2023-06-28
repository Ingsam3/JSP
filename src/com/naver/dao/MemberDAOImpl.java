package com.naver.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.naver.vo.Member7vo;

public class MemberDAOImpl {//오라클 DB연동 클래스
	
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
	
	//회원저장
	public int insertMember(Member7vo m) {
		int re=-1;//저장 실패시 반환값
		
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
			stmt=con.createStatement();//쿼리문을 수행할 stmt생성
			sql="insert into memberT values('"+m.getMem_id()+"','"+m.getMem_pwd()+"','"+
			m.getMem_name()+"','"+m.getMem_phone()+"','"+m.getMem_email()+"')";
			
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
	}//insertMember()

	//회원목록
	public List<Member7vo> getMemList(){
		List<Member7vo> mlist=new ArrayList<>();
		
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);//db연결 con생성
			sql="select * from memberT order by mem_id asc";//아이디를 기준으로 오름차순 정렬(알파벳순으
			//로 정렬)
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();//select문 수행후 검색결과 레코드를 rs에 저장
			while(rs.next()) {//복수개의 레코드행이 검색되어서 while 반복문으로 처리
				Member7vo m=new Member7vo();
				m.setMem_id(rs.getString("mem_id"));//mem_id컬럼에 저장된 문자열 아이디를 가져와서 setter
				//()메서드에 저장
				m.setMem_pwd(rs.getString("mem_pwd"));
				m.setMem_name(rs.getString("mem_name"));
				m.setMem_phone(rs.getString("mem_phone"));
				m.setMem_email(rs.getString("mem_email"));
				
				mlist.add(m);//컬렉션에 추가
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return mlist;
	}//getMemList()
	
	//총회원수
	public int getMemberCount() {
		int memberCount=0;//총 회원수
		
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
			sql="select count(mem_id) from memberT";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {//다음 레코드 행이 존재하면 참
				memberCount = rs.getInt(1);//총 회원수 저장
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return memberCount;
	}//getMemberCount()
	
	//아이디에 해당하는 회원 정보를 가져오는 메소드
	public Member7vo getMemberInfo(String id) {
		Member7vo m =null;
		
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
			sql="select * from memberT where mem_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,id);
			rs=pstmt.executeQuery();
			if(rs.next()) { 
				/*한개의 행 검색 결과 레코드 값이 있을 때는 if문으로 처리, 
				next메서드는 다음 레코드행이 존재하면 참 */
				m=new Member7vo();
				m.setMem_id(rs.getString("mem_id"));
				m.setMem_pwd(rs.getString("mem_pwd"));
				m.setMem_name(rs.getString("mem_name"));
				m.setMem_phone(rs.getString("mem_phone"));
				m.setMem_email(rs.getString("mem_email"));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();}
		finally {
			try {
				if(rs != null)rs.close(); 
				if(pstmt != null)pstmt.close(); 
				if(con != null)con.close(); 
			} catch (Exception e) {
				e.printStackTrace();			}
		}
		return m;
	}//getMemberInfo()
	
	
	// 회원 정보를 수정하는 메소드
		public int editMember(Member7vo m) { //Member7vo m 인자값잘보기
			int result =-1; //수정 실패시 반환값
			
			try {
				Class.forName(driver);
				con=DriverManager.getConnection(url, user, password);
				sql="update memberT set mem_pwd=?, mem_name=?, mem_phone=?, mem_email=? where mem_id=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1,m.getMem_pwd() );
				pstmt.setString(2,m.getMem_name() );
				pstmt.setString(3,m.getMem_phone() );
				pstmt.setString(4,m.getMem_email() );
				pstmt.setString(5,m.getMem_id() );

				result=pstmt.executeUpdate();
				//수정 쿼리 수행 후 성공한 레코드 행의 개수 반환
				
				
			} catch (Exception e) {
				e.printStackTrace();}
			finally {
				try {
					if(pstmt != null)pstmt.close(); 
					if(con != null)con.close(); 
				} catch (Exception e) {
					e.printStackTrace();			}
			}
			return result;
		}//editMember()
		
		// 회원 정보를 삭제하는 메소드
				public int delMember(String id) { //인자 값 잘 보기
					int result =0; //삭제 실패시 반환값
					try {
						Class.forName(driver);
						con=DriverManager.getConnection(url, user, password);
						sql="delete from memberT where mem_id=?";
						pstmt=con.prepareStatement(sql);
						pstmt.setString(1,id );
						result = pstmt.executeUpdate() ; 
						//수정 쿼리 수행 후 성공한 레코드 행의 개수 반환
						
						
					} catch (Exception e) {
						e.printStackTrace();}
					finally {
						try {
							if(pstmt != null)pstmt.close(); 
							if(con != null)con.close(); 
						} catch (Exception e) {
							e.printStackTrace();			}
					}
					return result;
				}//editMember()
	
	
}


/*메소드 기본 식
 public Member7vo-메소드자료형 getMemberInfo-메소드 이름(자료형 인자값) {
		Member7vo m =null;
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();}
		finally {
			try {//종료코드
				if(rs != null)rs.close(); 
				if(pstmt != null)pstmt.close(); 
				if(con != null)con.close(); 
			} catch (Exception e) {
				e.printStackTrace();			}
		}
		return 반환값;
	}//getMemberInfo()
 
 */




