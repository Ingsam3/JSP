package com.naver.vo;

/* 중간 자료 저장하는 데이터 저장빈 클래스 */
public class Member7vo {/* 네임피라미터 이름과 빈클래스 변수명을 같게 한다. 이유는 코드라인을 줄일 수 있기 때문이다.*/

	private String mem_id;//회원아이디
	private String mem_pwd;//비밀번호
	private String mem_name; //회원이름
	private String mem_phone; //폰번호
	private String mem_email; //이메일
	
	public String getMem_id() {//getter() 메서드 -> 값 반환 메서드
		return mem_id;
	}
	public void setMem_id(String mem_id) {//setter() 메서드 -> 값 저장 메서드
		this.mem_id = mem_id;
	}
	public String getMem_pwd() {
		return mem_pwd;
	}
	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}	
}
