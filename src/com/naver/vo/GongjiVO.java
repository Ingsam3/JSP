package com.naver.vo;

public class GongjiVO {//데이터 저장빈 클래스 => 되도록 이면 네임 피라미터 이름과 빈클래스 변수명,테이블 컬럼명을 같게 한다. 이유는 코드라인을 줄일 수 있는 길이기 때문이다.

	private int g_no;
	private String g_name;
	private String g_title;
	private String g_pwd;
	private String g_cont;
	private int g_hit;
	private String g_date;
	
	
	public int getG_no() {
		return g_no;
	}
	public void setG_no(int g_no) {
		this.g_no = g_no;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_title() {
		return g_title;
	}
	public void setG_title(String g_title) {
		this.g_title = g_title;
	}
	public String getG_pwd() {
		return g_pwd;
	}
	public void setG_pwd(String g_pwd) {
		this.g_pwd = g_pwd;
	}
	public String getG_cont() {
		return g_cont;
	}
	public void setG_cont(String g_cont) {
		this.g_cont = g_cont;
	}
	public int getG_hit() {
		return g_hit;
	}
	public void setG_hit(int g_hit) {
		this.g_hit = g_hit;
	}
	public String getG_date() {
		return g_date;
	}
	public void setG_date(String g_date) {
		this.g_date = g_date;
	}	
}
