--memberT 테이블 생성
create table memberT(
  mem_id varchar2(30) primary key --기본키 제약조건 설정으로 중복 아이디 저장 금지,null 저장금지
  ,mem_pwd varchar2(30) not null --비밀번호
  ,mem_name varchar2(30) not null --회원이름
  ,mem_phone varchar2(30) not null --폰번호
  ,mem_email varchar2(50) not null --이메일
);

select * from memberT order by mem_id asc;

